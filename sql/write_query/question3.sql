-- 以下にクエリを書いてください
WITH tmp AS (
SELECT
    p.id AS post_id,
    l.id,
    p.posted_at
FROM
    posts AS p
INNER JOIN
    (
        SELECT
            *
        FROM
            users
        WHERE
            id = 5000
    ) AS u
ON
    p.user_id = u.id
LEFT JOIN
    likes AS l
ON
    p.id = l.post_id
)

SELECT
    post_id,
    likes_count
FROM
    (
        SELECT
            post_id,
            posted_at,
            count(*) AS likes_count
        FROM   
            tmp
        GROUP BY    
            post_id,
            posted_at
        ORDER BY
            posted_at DESC
    ) AS a

