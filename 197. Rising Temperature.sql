# Write your MySQL query statement below
SELECT W2.id 
FROM Weather w1 join Weather w2
ON DATE_ADD(w2.recordDate, INTERVAL -1 DAY) = w1.recordDate
where w2.temperature>w1.temperature;