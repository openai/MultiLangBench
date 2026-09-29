SELECT local_relpath, moved_to
FROM nodes
WHERE (local_relpath = 'A/B' OR ((local_relpath > 'A/B/') AND (local_relpath < 'A/B0')))
  AND moved_to IS NOT NULL;