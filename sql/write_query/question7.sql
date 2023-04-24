 -- 以下にクエリを書いてください
SELECT
    follows.following_id AS user_id,
    posts1.content AS latest_post_content
FROM
    users
    JOIN follows ON users.id = follows.follower_id
    JOIN users AS followings ON follows.following_id = followings.id
    JOIN posts AS posts1 ON followings.id = posts1.user_id
WHERE
    users.id = 7000 and
    posts1.posted_at = (
        SELECT
            max(posts2.posted_at)
        FROM    
            posts AS posts2
        WHERE   
            posts2.user_id = posts1.user_id
    )
ORDER BY
    user_id;