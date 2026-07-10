CREATE OR REPLACE VIEW vw_public_content_image_id AS
SELECT id
    , nvl(image_mime_type, 'image/jpeg') AS content_type
    , image_blob AS image
FROM content
WHERE image_blob IS NOT NULL
    AND nvl(status, 'published') = 'published';
/