<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Hotel Booking</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        /* Font from Google */
        body {
            font-family: 'Roboto', sans-serif;
        }

        /* Custom styles for the hero section */
        .hero-section {
            background: linear-gradient(135deg, #003580 30%, #0078bf 100%); /* Gradient background */
            padding: 100px 0;
            height: 100vh; /* Full height */
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
            font-weight: bold;
            text-transform: capitalize;
        }

        .hero-section .highlight {
            color: #00aaff; /* Light blue highlight */
        }

        .hero-section p {
            font-size: 1.25rem;
            margin-bottom: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn-primary {
            background-color: #00aaff;
            border-color: #00aaff;
            padding: 15px 30px;
            font-size: 1.2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0078bf;
            border-color: #0078bf;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        /* Navbar */
        .navbar {
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
            color: #003580;
        }

        .navbar-brand:hover {
            color: #0078bf;
        }

        .nav-link {
            color: #003580;
            font-weight: 500;
        }

        .nav-link:hover {
            color: #0078bf;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light py-3">
        <div class="container">
            <a class="navbar-brand" href="/HotelBookingSystem">HotelBooking</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="/HotelBookingSystem/admin/RenderPageLogin" class="nav-link">Sign in</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Help</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <h1 class="display-4">List your <span class="highlight">hotel</span> on Booking.com</h1>
            <p class="lead">Whether hosting is your sideline passion or full-time job, list your hotel today and quickly start earning more income.</p>
            <a href="/HotelBookingSystem/admin/RenderPageLogin" class="btn btn-primary btn-lg">Get started now</a>
        </div>
    </section>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

