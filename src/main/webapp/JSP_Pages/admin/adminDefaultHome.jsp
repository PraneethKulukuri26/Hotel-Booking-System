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
            overflow-x: hidden;
        }

        /* Enhanced hero section */
        .hero-section {
            background: linear-gradient(135deg, #003580 0%, #0078bf 100%);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            padding: 120px 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            text-align: center;
            position: relative;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&q=80') center/cover;
            opacity: 0.1;
        }

        .hero-section h1 {
            font-size: 4rem;
            margin-bottom: 30px;
            font-weight: 800;
            text-transform: capitalize;
            letter-spacing: -1px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
        }

        .hero-section .highlight {
            color: #00aaff;
            position: relative;
            display: inline-block;
        }

        .hero-section .highlight::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 100%;
            height: 3px;
            background: #00aaff;
            transform: scaleX(0);
            transition: transform 0.3s ease;
        }

        .hero-section .highlight:hover::after {
            transform: scaleX(1);
        }

        .hero-section p {
            font-size: 1.4rem;
            margin-bottom: 40px;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
            line-height: 1.6;
            opacity: 0.9;
        }

        /* Enhanced button styles */
        .btn-primary {
            background-color: #00aaff;
            border: none;
            padding: 18px 40px;
            font-size: 1.2rem;
            font-weight: 600;
            border-radius: 50px;
            box-shadow: 0 10px 20px rgba(0, 170, 255, 0.3);
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        .btn-primary:hover {
            background-color: #0078bf;
            transform: translateY(-5px) scale(1.05);
            box-shadow: 0 15px 30px rgba(0, 170, 255, 0.4);
        }

        /* Enhanced navbar */
        .navbar {
            background: rgba(255, 255, 255, 0.95) !important;
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            padding: 20px 0;
        }

        .navbar-brand {
            font-weight: 800;
            font-size: 1.8rem;
            color: #003580;
            letter-spacing: -1px;
        }

        .nav-link {
            font-size: 1.1rem;
            font-weight: 600;
            padding: 10px 20px !important;
            margin: 0 5px;
            border-radius: 25px;
            transition: all 0.3s ease;
        }

        .nav-link:hover {
            color: #00aaff;
            background: rgba(0, 170, 255, 0.1);
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

