SELECT a.id
     , a.content_id
     , a.sort_order
     , a.title
     , a.file_url
     , a.file_name
     , a.mime_type
     , a.file_size_bytes
     , a.is_external
     , a.created_at
     , a.updated_at
FROM content_attachment a
JOIN content c
  ON c.id = a.content_id
WHERE a.content_id = :id
  AND nvl(c.status, 'published') = 'published'
ORDER BY nvl(a.sort_order, 999999), a.id
