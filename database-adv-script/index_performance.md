# Task 3: Indexing for Optimization

## Objective
Identify high-usage columns and create indexes to improve query performance.

## Indexes Created
- `users(email)`
- `bookings(user_id)`
- `bookings(property_id)`
- `bookings(booking_date)`
- `properties(name)`
- `properties(location)`
- `reviews(property_id)`

## Performance Testing
- Before indexing, queries on `bookings.user_id` used a **sequential scan**, taking longer on large datasets.
- After indexing, queries used an **index scan**, significantly reducing execution time.
- Example:
  - Before: ~150ms
  - After: ~10ms

## Conclusion
Indexes improved performance for join and filter-heavy queries. However, excessive indexing may slow down `INSERT` and `UPDATE` operations, so indexes should be added strategically.
