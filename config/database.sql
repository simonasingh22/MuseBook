CREATE DATABASE IF NOT EXISTS user_db;
USE user_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    token VARCHAR(100),
    is_verified TINYINT(1) DEFAULT 0
);

-- Create shows table
CREATE TABLE shows (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    available_slots JSON NOT NULL
);

-- Create bookings table (Updated with missing columns)
CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    show_id INT NOT NULL,
    show_name VARCHAR(255) NOT NULL,
    num_tickets INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    visitor_name VARCHAR(255) NOT NULL,
    show_time VARCHAR(50) NOT NULL,
    mobile_number VARCHAR(15) NOT NULL,
    payment_id VARCHAR(255) NOT NULL,
    ticket_number VARCHAR(50) NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (show_id) REFERENCES shows(id)
);

-- Create contact_messages table
CREATE TABLE IF NOT EXISTS contact_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    subject VARCHAR(200) NOT NULL,
    message TEXT NOT NULL,
    created_at DATETIME NOT NULL,
    status ENUM('new', 'read', 'replied') DEFAULT 'new'
);

-- Insert sample show data
INSERT INTO shows (name, description, price, available_slots) VALUES
('Mughal Era Treasures', 'Explore the opulent world of Mughal art and architecture', 100.00,
'["10:00 AM", "12:00 PM", "02:00 PM", "04:00 PM", "06:00 PM"]'),
('Ancient Indian Civilizations', 'Journey through time to discover India\'s ancient heritage', 75.00,
'["10:00 AM", "12:00 PM", "02:00 PM", "04:00 PM", "06:00 PM"]'),
('Modern Art Revolution', 'Witness the evolution of Indian art in the modern era', 150.00,
'["10:00 AM", "12:00 PM", "02:00 PM", "04:00 PM", "06:00 PM"]'),
('Digital Art & Technology', 'Explore the intersection of traditional art and modern technology', 150.00,
'["10:00 AM", "12:00 PM", "02:00 PM", "04:00 PM", "06:00 PM"]');