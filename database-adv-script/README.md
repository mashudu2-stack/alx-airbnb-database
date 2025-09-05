# Task 0: Complex Queries with Joins

This task demonstrates SQL joins in the Airbnb database.

- **INNER JOIN** → Get all bookings with the users who made them.
- **LEFT JOIN** → Get all properties and their reviews (including properties without reviews).
- **FULL OUTER JOIN** → Get all users and all bookings, even if they don’t match.

Files:
- `joins_queries.sql`

# Task 1: Subqueries

This task demonstrates both correlated and non-correlated subqueries.

- **Non-Correlated Subquery**: Finds all properties where the average rating is greater than 4.0.
- **Correlated Subquery**: Finds users who have made more than 3 bookings.

Files:
- `subqueries.sql`

# Task 2: Aggregations and Window Functions

This task demonstrates how to use SQL aggregation and window functions.

- **Aggregation (COUNT + GROUP BY)**: Finds the total number of bookings per user.
- **Window Functions (RANK, ROW_NUMBER)**: Ranks properties based on the total number of bookings received.

Files:
- `aggregations_and_window_functions.sql`

# ALX Airbnb Database Project

## Task 0: Joins
- INNER JOIN, LEFT JOIN, FULL OUTER JOIN queries
- File: joins_queries.sql

## Task 1: Subqueries
- Correlated and non-correlated subqueries
- File: subqueries.sql

## Task 2: Aggregations and Window Functions
- COUNT + GROUP BY, ROW_NUMBER, RANK
- File: aggregations_and_window_functions.sql

## Task 3: Indexing
- Created indexes for optimization
- Files: database_index.sql, index_performance.md

## Task 4: Query Optimization
- Refactored complex queries
- Files: perfomance.sql, optimization_report.md

## Task 5: Partitioning
- Partitioned bookings table by start_date
- Files: partitioning.sql, partition_performance.md

## Task 6: Performance Monitoring
- Monitored and refined database queries
- File: performance_monitoring.md
