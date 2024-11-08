<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header with Navigation Buttons</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        .custom-header {
            background-color: #003580; /* Booking.com blue */
            color: white;
            padding: 10px 20px;
        }
        .custom-header .logo {
            font-size: 27px;
            font-weight: bold;
        }
        .nav-link {
            color: white;
            margin-right: 30px;
            font-size: 18px;
            text-transform: capitalize;
            transition: color 0.3s ease;
        }
        .nav-link:hover {
            color: #ffcc00; /* Gold color for hover effect */
        }
        .custom-header .account-icon {
            font-size: 24px;
            color: white;
        }
    </style>
</head>
<body>

    <div class="container-fluid custom-header d-flex justify-content-between align-items-center">
        <!-- Logo Section -->
        <div class="logo">
            HotelBooking
        </div>
        <!-- Navigation Buttons -->
        <div class="d-flex align-items-center">
            <a href="#" class="nav-link">Home</a>
            <a href="#" class="nav-link">Bookings</a>
            <a href="#" class="nav-link">Add Property</a>
            <a href="#" class="nav-link">My Properties</a>
            <!-- Account Icon -->
            <div class="account-icon">
                <i class="fas fa-user-circle"></i>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
