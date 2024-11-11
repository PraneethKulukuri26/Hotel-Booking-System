<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .dashboard-card {
            transition: transform 0.2s;
        }
        .dashboard-card:hover {
            transform: translateY(-5px);
        }
        .stat-card {
            border-left: 4px solid #0d6efd;
        }
    </style>
</head>
<body class="bg-light">
    <div class="container py-5">
        <h1 class="mb-4 text-center">Admin Dashboard</h1>
        
        <!-- Statistics Row -->
        <div class="row mb-4">
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-0 shadow stat-card h-100">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Properties</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">${totalProperties}</div>
                            </div>
                            <div class="col-auto">
                                <i class="bi bi-house-door fs-2 text-primary"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-0 shadow stat-card h-100">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Active Bookings</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">${activeBookings}</div>
                            </div>
                            <div class="col-auto">
                                <i class="bi bi-calendar-check fs-2 text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-0 shadow stat-card h-100">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Total Revenue</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">₹${totalRevenue}</div>
                            </div>
                            <div class="col-auto">
                                <i class="bi bi-currency-rupee fs-2 text-info"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-0 shadow stat-card h-100">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Approvals</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">${pendingApprovals}</div>
                            </div>
                            <div class="col-auto">
                                <i class="bi bi-clock-history fs-2 text-warning"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Actions Row -->
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card h-100 border-0 shadow dashboard-card">
                    <div class="card-body text-center">
                        <i class="bi bi-houses fs-1 text-primary mb-3"></i>
                        <h5 class="card-title">Manage Properties</h5>
                        <p class="card-text">View, edit, and manage all your listed properties</p>
                        <a href="viewProperties.jsp" class="btn btn-primary mb-2 w-100">View Properties</a>
                        <a href="/HotelBookingSystem/admin/RenderAddProperty" class="btn btn-outline-primary w-100">Add New Property</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100 border-0 shadow dashboard-card">
                    <div class="card-body text-center">
                        <i class="bi bi-calendar2-week fs-1 text-success mb-3"></i>
                        <h5 class="card-title">Booking Management</h5>
                        <p class="card-text">Monitor and manage all property bookings</p>
                        <a href="viewBookings.jsp" class="btn btn-success mb-2 w-100">View All Bookings</a>
                        <a href="pendingBookings.jsp" class="btn btn-outline-success w-100">Pending Bookings</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100 border-0 shadow dashboard-card">
                    <div class="card-body text-center">
                        <i class="bi bi-gear fs-1 text-info mb-3"></i>
                        <h5 class="card-title">Settings & Reports</h5>
                        <p class="card-text">Manage your account and view reports</p>
                        <a href="reports.jsp" class="btn btn-info mb-2 w-100">View Reports</a>
                        <a href="settings.jsp" class="btn btn-outline-info w-100">Settings</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>