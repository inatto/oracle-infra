SELECT nvl(image_mime_type, 'image/jpeg') AS content_type
    , image_blob AS content
FROM content
WHERE id = :id
    AND image_blob IS NOT NULL
    AND nvl(status, 'published') = 'published'
