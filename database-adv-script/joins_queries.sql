-- Query 1: INNER JOIN
SELECT 
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.booking_date,
    users.id AS user_id,
    users.name AS user_name,
    users.email
FROM bookings
INNER JOIN users
    ON bookings.user_id = users.id;

-- Query 2: LEFT JOIN
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews
    ON properties.id = reviews.property_id;

-- Query 3: FULL OUTER JOIN (simulated for MySQL)
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id
FROM users
LEFT JOIN bookings
    ON users.id = bookings.user_id

UNION

SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id
FROM users
RIGHT JOIN bookings
    ON users.id = bookings.user_id;
