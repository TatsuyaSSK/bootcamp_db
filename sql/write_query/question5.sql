-- 以下にクエリを書いてください
SELECT
    tags.name AS tag_name,
    count(*) AS posts_count
FROM 
    tags
    JOIN post_tags ON tags.id = post_tags.tag_id
GROUP BY    
    tags.id
HAVING
    posts_count >= 20
ORDER BY 
    posts_count DESC,
    tags.id ASC;

-- WITH tmp AS (
-- SELECT
--     tag_id,
--     count(*) AS post_count
-- FROM
--     post_tags 
-- GROUP BY
--     tag_id
-- )

-- SELECT
--     t.name AS tag_name,
--     pt.post_count
-- FROM    
--     tmp AS pt
-- LEFT JOIN
--     tags AS t
-- ON
--     pt.tag_id = t.id
-- WHERE
--     post_count >= 20
-- ORDER BY
--     post_count DESC, pt.tag_id ASC;
    