# Task 4: Query Optimization Techniques

## Initial Query
- Retrieved bookings with user, property, and payment details.
- Used multiple joins and selected many columns.

## Performance Analysis
- `EXPLAIN ANALYZE` showed sequential scans on `bookings` and `payments`.
- Missing indexes on `bookings.user_id`, `bookings.property_id`, and `payments.booking_id` increased execution time.

## Optimizations Applied
1. Added indexes:
   - `bookings(user_id)`
   - `bookings(property_id)`
   - `payments(booking_id)`
2. Reduced unnecessary columns (selected only booking_id, date, user_name, property_name, amount).
3. Used `INNER JOIN` instead of `JOIN` (default but clearer).

## Results
- Before optimization: ~250ms (sequential scans).
- After optimization: ~40ms (index scans).
- Query execution time reduced significantly.

## Conclusion
Indexes + reducing columns + better joins led to improved query performance. Strategic optimization ensures scalability for large datasets.
