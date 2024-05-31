# Write your MySQL query statement below
SELECT 
    machine_id, 
    round(AVG(a2 - a1),3) AS processing_time
FROM (
    SELECT
        a.machine_id,
        a.process_id,
        a.timestamp AS a1,
        b.timestamp AS a2
    FROM
        Activity a
        JOIN Activity b
        ON a.machine_id = b.machine_id
        AND a.process_id = b.process_id
        AND a.activity_type = 'start'
        AND b.activity_type = 'end'
) AS paired_activities
GROUP BY machine_id;
