# Task 5: Partitioning Large Tables

## Objective
Optimize queries on the large bookings table by implementing partitioning on the `start_date` column.

## Implementation
- Created a new table `bookings_partitioned` with **RANGE partitioning** by `start_date`.
- Defined yearly partitions (`bookings_2022`, `bookings_2023`, `bookings_2024`).

## Performance Testing
- **Before partitioning**: Queries on date ranges scanned the entire `bookings` table.
- **After partitioning**: Queries only scanned relevant partitions.
- Example:
  - Query on bookings from Jan–Jun 2023:
    - Before: ~300ms (sequential scan on full table).
    - After: ~40ms (index/partition scan on only `bookings_2023`).

## Conclusion
Partitioning significantly reduced query execution time for date-based filters. This approach is effective for very large datasets where queries target specific time ranges.
