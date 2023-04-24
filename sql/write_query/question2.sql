-- 以下にクエリを書いてください
SELECT
    CONCAT(u.first_name, ' ', u.last_name) AS fullname,
    c.content,
    c.commented_at
FROM
    (
        SELECT
            *
        FROM    
            posts
        WHERE
            id = 12345
    ) AS p
LEFT JOIN
    comments AS c
ON
    p.id = c.post_id
INNER JOIN
    users AS u
ON
    c.user_id = u.id
ORDER BY
    c.commented_at DESC