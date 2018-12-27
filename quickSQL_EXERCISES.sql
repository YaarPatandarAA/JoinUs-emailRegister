-- Challenge 1
SELECT
   DATE_FORMAT(created_at, '%M %D %Y') as earliest_date 
FROM
   users 
ORDER BY
   created_at LIMIT 1;

-- Challenge 2
SELECT
   email,
   created_at 
FROM
   users 
ORDER BY
   created_at LIMIT 1;

-- Challenge 3
SELECT
   DATE_FORMAT(created_at, '%M') as month,
   COUNT(*) as count 
FROM
   users 
GROUP BY
   DATE_FORMAT(created_at, '%M') 
ORDER BY
   count;

-- Challenge 4
SELECT
   count(email) AS yahoo_users
FROM
   users
WHERE
   email LIKE '%@yahoo.com';

-- Challenge 5
SELECT 
    CASE
        WHEN email LIKE '%@gmail.com' THEN 'gmail' 
        WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
        WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
        ELSE 'other' 
    END AS provider, 
    COUNT(*) AS total_users 
FROM users 
GROUP BY provider 
ORDER BY total_users DESC; 
