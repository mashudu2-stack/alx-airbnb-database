-- Indexes for optimization

-- Users table
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_id ON users(id);

-- Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_date ON bookings(booking_date);

-- Properties table
CREATE INDEX idx_properties_name ON properties(name);
CREATE INDEX idx_properties_location ON properties(location);

-- Reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Check performance before indexing
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 5;

-- Check performance after indexing
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 5;
