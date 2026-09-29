PRAGMA max_page_count=1000;
INSERT INTO result(n) SELECT max_page_count FROM pragma_max_page_count;