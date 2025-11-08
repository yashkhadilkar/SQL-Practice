'''
Table: Users

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| name           | varchar |
+----------------+---------+
user_id is the primary key (column with unique values) for this table.
This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.
 

Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by user_id.

The result format is in the following example.

 

Example 1:

Input: 
Users table:
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | aLice |
| 2       | bOB   |
+---------+-------+
Output: 
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | Alice |
| 2       | Bob   |
+---------+-------+

Syntax:
The general syntax for SUBSTR is:
Code

SUBSTR(string_expression, start_position, [length])
Parameters:
string_expression: This is the input string from which you want to extract a substring. It can be a column name, a literal string, or another expression that evaluates to a string.
start_position: This specifies the starting position of the substring within the string_expression.
If start_position is positive, counting begins from the beginning of the string (the first character is position 1).
If start_position is negative, counting begins backward from the end of the string (e.g., -1 is the last character).
length (optional): This specifies the number of characters to extract from the start_position.
If length is omitted, the function extracts all characters from the start_position to the end of the string_expression.
If length is less than 1, the function typically returns NULL.
 '''

SELECT user_id, CONCAT(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2))) AS name
FROM Users
ORDER BY user_id 
