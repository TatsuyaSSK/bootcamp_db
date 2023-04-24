-- 以下にクエリを書いてください
SELECT
    u.id AS user_id,
    CONCAT(u.first_name, u.last_name) AS full_name
FROM    
    users AS u
INNER JOIN (
SELECT
    follower_id
FROM
    follows
WHERE
    following_id = 6000
) AS f
ON
    u.id = f.follower_id
ORDER BY
    CONCAT(u.first_name, u.last_name) ASC;