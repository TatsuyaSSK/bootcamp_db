-- 以下にクエリを書いてください
SELECT
    t.name AS tag_name
FROM   
    tags AS t
INNER JOIN
    (
        SELECT
            tag_id
        FROM
            post_tags
        WHERE
            post_id = 40000        
    ) AS pt
ON
    t.id = pt.tag_id
ORDER BY
    t.name ASC

