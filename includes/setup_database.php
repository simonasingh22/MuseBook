<?php
require_once 'db.php';

// Create shows table if not exists
$sql = "CREATE TABLE IF NOT EXISTS shows (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL
)";

if ($conn->query($sql) === FALSE) {
    die("Error creating shows table: " . $conn->error);
}

// Check if shows table is empty
$result = $conn->query("SELECT COUNT(*) as count FROM shows");
$row = $result->fetch_assoc();

if ($row['count'] == 0) {
    // Insert sample shows
    $shows = [
        [
            'name' => 'Mughal Era Treasures',
            'description' => 'Explore the opulent world of Mughal art and architecture',
            'price' => 100.00
        ],
        [
            'name' => 'Ancient Indian Civilizations',
            'description' => 'Journey through time to discover India\'s ancient heritage',
            'price' => 75.00
        ],
        [
            'name' => 'Modern Art Revolution',
            'description' => 'Witness the evolution of Indian art in the modern era',
            'price' => 150.00
        ],
        [
            'name' => 'Digital Art & Technology',
            'description' => 'Explore the intersection of traditional art and modern technology',
            'price' => 150.00
        ]
    ];

    $stmt = $conn->prepare("INSERT INTO shows (name, description, price) VALUES (?, ?, ?)");
    
    foreach ($shows as $show) {
        $stmt->bind_param("ssd", $show['name'], $show['description'], $show['price']);
        if ($stmt->execute() === FALSE) {
            die("Error inserting show: " . $stmt->error);
        }
    }
}

// Drop existing bookings table to recreate with correct structure
$conn->query("DROP TABLE IF EXISTS bookings");

// Create bookings table with all required fields
$sql = "CREATE TABLE IF NOT EXISTS bookings (
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
    booking_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
    echo "Bookings table created successfully\n";
} else {
    echo "Error creating bookings table: " . $conn->error . "\n";
}

$conn->close();

echo "Database setup completed successfully!";
?>
