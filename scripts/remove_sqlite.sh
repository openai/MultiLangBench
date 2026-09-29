#!/usr/bin/env bash
set -euo pipefail

echo "Not removing SQLite. Did you actually want to run this? If so, remove this line and the next from the script."
exit 1


rm -f /usr/bin/sqlite3 /usr/local/bin/sqlite3
rm -f /usr/include/sqlite3.h /usr/include/sqlite3ext.h
rm -f /usr/local/include/sqlite3.h /usr/local/include/sqlite3ext.h
rm -f /usr/lib/x86_64-linux-gnu/libsqlite3.a
rm -f /usr/lib/x86_64-linux-gnu/libsqlite3.so*
rm -f /lib/x86_64-linux-gnu/libsqlite3.so*
rm -f /usr/lib/x86_64-linux-gnu/pkgconfig/sqlite3.pc
rm -rf /usr/lib/python3.11/sqlite3
rm -f /usr/lib/python3.11/lib-dynload/_sqlite3*.so*
rm -rf /usr/local/lib/python3.12/sqlite3
rm -f /usr/local/lib/python3.12/lib-dynload/_sqlite3*.so*
# Cargo statically embeds SQLite, so removing shared libraries is insufficient.
rm -f /root/.rustup/toolchains/*/bin/cargo

find /lib /usr/lib /usr/local/lib /opt /usr/include /usr/local/include -type f \\
    \\( -name 'libsqlite3*.so*' -o -name 'libsqlite3*.a' -o -name 'sqlite3.pc' -o -name '_sqlite3*.so*' -o -name 'sqlite3.h' -o -name 'sqlite3ext.h' -o -name 'sqlite.h' \\) \\
    -delete 2>/dev/null || true
find /usr/lib /usr/local/lib /opt -type d -path '*/python*/sqlite3' \\
    -prune -exec rm -rf {} + 2>/dev/null || true

rm -f /var/cache/apt/archives/*.deb
rm -rf /var/lib/apt/lists/*
ldconfig

# The modern Swift driver requires SQLite, but the legacy compiler driver does not.
if compgen -G '/root/.local/share/swiftly/toolchains/*/usr/bin/swift-legacy-driver' >/dev/null; then
    rm -f /root/.local/share/swiftly/bin/swiftc
    cat > /root/.local/share/swiftly/bin/swiftc <<'SWIFT_COMPILER'
#!/usr/bin/env bash
set -euo pipefail
for driver in /root/.local/share/swiftly/toolchains/*/usr/bin/swift-legacy-driver; do
    if [ -x "$driver" ]; then
        exec -a swiftc "$driver" -disallow-use-new-driver "$@"
    fi
done
echo 'Swift legacy compiler driver is unavailable' >&2
exit 1
SWIFT_COMPILER
    chmod +x /root/.local/share/swiftly/bin/swiftc
fi

if command -v sqlite3 >/dev/null 2>&1; then
    echo 'sqlite3 executable is still available' >&2
    exit 1
fi
if ldconfig -p 2>/dev/null | grep -qi sqlite; then
    echo 'SQLite shared library is still available' >&2
    exit 1
fi
if /usr/local/bin/python3 -c 'import sqlite3' >/dev/null 2>&1; then
    echo 'Python sqlite3 binding is still importable' >&2
    exit 1
fi
if find /root/.rustup/toolchains -type f -path '*/bin/cargo' -print -quit 2>/dev/null | grep -q .; then
    echo 'Cargo executable with embedded SQLite is still available' >&2
    exit 1
fi
if find /usr /usr/local /opt /root -xdev -type f \\
    \\( -name 'libsqlite3*.so*' -o -name 'libsqlite3*.a' -o -name 'sqlite3.h' -o -name 'sqlite3ext.h' -o -name 'sqlite.h' -o -name '_sqlite3*.so*' \\) \\
    -print -quit 2>/dev/null | grep -q .; then
    echo 'SQLite artifact is still present' >&2
    exit 1
fi
