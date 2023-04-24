-- 以下にクエリを書いてください
SELECT
    u.email
FROM
    users AS u
INNER JOIN
    (
        SELECT
            DISTINCT user_id
        FROM
            settings
        WHERE
            is_send_email = true
    ) AS s
ON
    u.id = s.user_id