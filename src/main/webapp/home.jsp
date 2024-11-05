<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Booking System</title>
    <style>
    /* Basic Reset */
	* {
	    margin: 0;
	    padding: 0;
	    box-sizing: border-box;
	}
	
	body {
	    font-family: 'Poppins', sans-serif;  /* A modern font, you can include it via Google Fonts */
	    color: #333;
	    background-color: #f4f4f4;
	}
	
	header {
	    background-color: #003580;
	    padding: 20px 0;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
	    top: 0;
	    height:300px;
	    background-image: url('https://www.pngall.com/wp-content/uploads/8/Travel-PNG-Images.png');
	}
	
	.navbar {
	padding:0px 100px;
	display:flex;
	justify-content:space-between;
	}
	
	.logo a {
	    color: #fff;
	    text-decoration: none;
	    font-size: 1.2em;
	    font-weight: bold;
	}
	
	.containerItem{
		display:flex;
		gap:10px;
		align-items:center;
	}
	
	.item1{
		color:#fff;
	    font-size: 1.05em;
	    cursor:pointer;
	}
	
	.item1:hover{
	text-decoration:underline;
	}

	.item2{
		background-color:#fff;
		padding:7px 10px;
		color:#096CD1;
		border-radius:3px;
	    cursor:pointer;
	}

	.item2:hover{
		background-color:#E5E5E5;
	}
	.badge {
	  display: flex;
	  align-items: center;
	  background-color: #003087; /* Deep blue background */
	  padding: 10px;
	  border-radius: 10px;
	  width: fit-content;
	  color: white;
	  transition: background-color 0.2s;
	  cursor:pointer;
	}

	.circle {
	  background-color: #FFC700; /* Yellow circle */
	  width: 40px;
	  height: 40px;
	  border-radius: 50%;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  margin-right: 10px;
	}

	.initial {
	  font-weight: bold;
	  font-size: 20px;
	  color: black; /* Black text for initial */
	}

	.text .name {
	  font-size: 16px;
	  font-weight: bold;
	}

	.text .level {
	  font-size: 14px;
	  font-weight: normal;
	  color: #FFC700; /* Yellow text for level */
	}
	
	.badge:hover{
		background-color:#EEEEEF30;
	}

	/* Search Section Styles */
	#search-section {
	    background-color: #f4f4f4;
	    padding: 60px 0;
	    text-align: center;
	}
	
	#search-section h1 {
	    margin-bottom: 30px;
	    font-size: 2.5em;
	    color: #003580;
	    font-weight: bold;
	}
	
	#search-form input, #search-form button {
	    padding: 15px;
	    margin: 10px;
	    border: none;
	    border-radius: 8px;
	    font-size: 1em;
	}
	
	#search-form input {
	    width: 20%;
	    max-width: 300px;
	    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	}
	
	#search-form button {
	    background-color: #f57c00;
	    color: #fff;
	    cursor: pointer;
	    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	    transition: background-color 0.3s ease-in-out, box-shadow 0.3s;
	}
	
	#search-form button:hover {
	    background-color: #e65100;
	    box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
	}

/* Responsive Design */
	@media (max-width: 768px) {
	    .nav-links {
	        flex-direction: column;
	        gap: 10px;
	        margin-left: 0;
	    }
	    
	    #search-form input {
	        width: 60%; /* Adapt search input to smaller screens */
	    }
	    
	    #search-section h1 {
	        font-size: 1.8em;
	    }
    
	}
    
    </style>
</head>
<body>
	<% 
	    String User = (String) request.getAttribute("User"); 
		String userName=(String) request.getAttribute("UserName");
	%>

    <header>
        <nav class="navbar">
            <h1 class="logo"><a href="#">HotelBooking</a></h1>
            <div class="containerItem" >
		        <div class="item1">List your property</div>
            
            	<% if (User != null) { %>
            		<div class="badge">
					  <div class="circle">
					    <span class="initial">P</span>
					  </div>
					  <div class="text">
					    <div class="name">{%= userName %}</div>
					  </div>
					</div>
            	<% } else { %>
		            <div class="item2">Register</div>
		            <div class="item2">Login</div>
	            <% } %>
            </div>
            
        </nav>
    </header>

    <!-- Search Section -->
    <section id="search-section">
        <div class="container">
            <h1>Find Your Perfect Stay</h1>
            <form id="search-form">
                <input type="text" id="location" placeholder="Enter Location" required>
                <input type="date" id="checkin" required>
                <input type="date" id="checkout" required>
                <button type="submit">Search Hotels</button>
            </form>
        </div>
    </section>

    <!-- Hotel Listings Section -->
    <section id="hotel-listings">
        <div class="container">
            <h2>Available Hotels</h2>
            <div class="hotel-grid">
                <!-- Hotel cards will be dynamically added here -->
            </div>
        </div>
    </section>

    <script src="script.js"></script>
</body>
</html>
