# PostgreSQL Basics

## 1. What is PostgreSQL?

**Answer**:  
PostgreSQL is a powerful, open-source object-relational database management system (ORDBMS) known for its advanced features, extensibility, and compliance with SQL standards. It supports both SQL querying and object-oriented programming, making it one of the most advanced open-source RDBMS solutions available.

## 2. What is the purpose of a database schema in PostgreSQL?

**Answer**:  
A database schema in PostgreSQL is a logical grouping of database objects, such as tables, views, and functions. Schemas help in organizing and managing database objects within a single database, allowing multiple users or applications to share a database without interference.

## 3. Explain the primary key and foreign key concepts in PostgreSQL.

**Primary Key**:  
A primary key is a column or a combination of columns that uniquely identifies each row in a table. It must contain unique values and cannot have `NULL` values.

**Foreign Key**:  
A foreign key is a field (or collection of fields) in one table that refers to the primary key in another table. It establishes a relationship between the two tables, ensuring referential integrity.

## 4. What is the difference between the VARCHAR and CHAR data types?

**Answer**:  
- **VARCHAR**: A variable-length character data type. It can store strings of any length up to a specified limit, with the storage size being proportional to the string length.
- **CHAR**: A fixed-length character data type. It always stores the exact number of characters specified, padding with spaces if necessary.

## 5. Explain the purpose of the WHERE clause in a SELECT statement.

**Answer**:  
The `WHERE` clause is used to filter records in a `SELECT` statement. It defines the condition(s) that must be met for rows to be returned. Without a `WHERE` clause, all rows from the table are selected.

## 6. What are the LIMIT and OFFSET clauses used for?

**Answer**:  
- **LIMIT**: Restricts the number of rows returned by a query.
- **OFFSET**: Skips a specified number of rows before starting to return rows from the query result.

Together, they are often used for pagination.

## 7. How can you perform data modification using UPDATE statements?

**Answer**:  
The `UPDATE` statement in PostgreSQL is used to modify existing records in a table. You specify the table, the columns to be updated, and a condition using the `WHERE` clause to target specific rows. Example:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```


## 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

**Answer**:  
The `JOIN` operation in PostgreSQL is used to combine data from two or more tables based on a related column between them. It helps retrieve data from multiple tables efficiently. The most common types of joins are:

- **INNER JOIN**: Returns rows with matching values in both tables.
- **LEFT JOIN**: Returns all rows from the left table, and matching rows from the right table. If no match is found, NULL is returned for the right table.
- **RIGHT JOIN**: Returns all rows from the right table, and matching rows from the left table. If no match is found, NULL is returned for the left table.
- **FULL JOIN**: Returns all rows when there is a match in either table, returning NULL where there are no matches in one of the tables.

### Example:
```sql
SELECT students.student_name, courses.course_name
FROM students
JOIN enrollment ON students.student_id = enrollment.student_id
JOIN courses ON enrollment.course_id = courses.course_id;
```


