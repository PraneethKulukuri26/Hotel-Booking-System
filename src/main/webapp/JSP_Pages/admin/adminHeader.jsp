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
        background-color: #003580;
        color: white;
        padding: 15px 20px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .custom-header .logo {
        font-size: 27px;
        font-weight: bold;
        text-decoration: none;
        color: white;
    }
    .nav-link {
        color: white;
        margin-right: 15px;
        font-size: 16px;
        text-transform: capitalize;
        transition: all 0.3s ease;
        padding: 8px 15px;
        border-radius: 4px;
    }
    .nav-link:hover {
        color: #ffcc00;
        background-color: rgba(255,255,255,0.1);
        transform: translateY(-2px);
    }
    .custom-header .account-icon {
        font-size: 24px;
        color: white;
        cursor: pointer;
        transition: transform 0.3s ease;
    }
    .account-icon:hover {
        transform: scale(1.1);
    }
    .navbar-toggler {
        border: none;
        color: white;
        padding: 0;
    }
    .navbar-toggler:focus {
        box-shadow: none;
    }
    
    /* Responsive styles */
    @media (max-width: 768px) {
        .custom-header {
            padding: 10px 15px;
        }
        .nav-menu {
            position: absolute;
            top: 100%;
            left: 0;
            right: 0;
            background-color: #003580;
            padding: 10px;
            display: none;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .nav-menu.show {
            display: block;
        }
        .nav-link {
            display: block;
            margin: 10px 0;
            text-align: center;
        }
    }
    </style>
</head>
<body>

	<div class="container-fluid custom-header">
	        <nav class="navbar navbar-expand-md p-0">
	            <div class="container-fluid p-0">
	                <!-- Logo Section -->
	                <a href="#" class="logo">HotelBooking</a>
	                
	                <!-- Mobile Toggle Button -->
	                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
	                    <i class="fas fa-bars"></i>
	                </button>
	                
	                <!-- Navigation Items -->
	                <div class="collapse navbar-collapse" id="navbarNav">
	                    <div class="navbar-nav ms-auto align-items-center">
	                        <a href="#" class="nav-link">Home</a>
	                        <a href="#" class="nav-link">Bookings</a>
	                        <a href="#" class="nav-link">Add Property</a>
	                        <a href="#" class="nav-link">My Properties</a>
	                        <div class="account-icon ms-3">
	                            <i class="fas fa-user-circle"></i>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </nav>
	    </div>

    

    <!-- Bootstrap JS and Popper -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
