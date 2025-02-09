SELECT contest_id,
round(user_cnt / total_cnt * 100, 2) percentage
FROM (
    SELECT contest_id, COUNT(user_id) user_cnt
    FROM Register
    GROUP BY contest_id
) a,
(
    SELECT COUNT(user_id) total_cnt
    FROM Users
) b
ORDER BY percentage DESC, contest_id ASC;