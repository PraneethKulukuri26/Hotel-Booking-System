<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Booking System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    
    <style>
    /* Basic Reset */
	* {
	    margin: 0;
	    padding: 0;
	    box-sizing: border-box;
	}
	
	body {
	    font-family: 'Poppins', sans-serif;
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
	    /*background-image: url('E:/projects/java/Servlet/HotelBookingSystem/src/main/webapp/images/background.png');*/
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
	
	.item1 a{
		color:#fff;
	    font-size: 1.05em;
	    cursor:pointer;
	    text-decoration:none;
	}
	
	.item1 a:hover{
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
	  background-color: #003087; 
	  padding: 10px;
	  border-radius: 10px;
	  width: fit-content;
	  color: white;
	  transition: background-color 0.2s;
	  cursor:pointer;
	}

	.circle {
	  background-color: #FFC700; 
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
	  color: black; 
	}

	.text .name {
	  font-size: 16px;
	  font-weight: bold;
	}

	.text .level {
	  font-size: 14px;
	  font-weight: normal;
	  color: #FFC700; 
	}
	
	.badge:hover{
		background-color:#EEEEEF30;
	}
	
	.dropdown-content {
	  display: none;
	  position: absolute;
	  right: 0;
	  background-color: #f1f1f1;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	  width: 200px;
	  border-radius: 5px;
	}
	
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}
	
	.dropdown-content a:hover {
	  background-color: #ddd;
	}
	
	.show {
	  display: block;
	}

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
	
	
	
	/* ... existing styles ... */

/* Enhanced Header Styles */
header {
    background: linear-gradient(rgba(0, 53, 128, 0.9), rgba(0, 53, 128, 0.85)),
                url('https://images.unsplash.com/photo-1566073771259-6a8506099945?q=80');
    background-size: cover;
    background-position: center;
    height: 500px;
    position: relative;
    display: flex;
    flex-direction: column;
}

.navbar {
    padding: 15px 8%;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    -webkit-backdrop-filter: blur(10px);
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    position: fixed;
    width: 100%;
    z-index: 1000;
    transition: background-color 0.3s ease;
}

.navbar.scrolled {
    background: rgba(0, 53, 128, 0.95);
}

.logo a {
    color: #fff;
    text-decoration: none;
    font-size: 1.5em;
    font-weight: 700;
    letter-spacing: 0.5px;
}

.containerItem {
    display: flex;
    gap: 20px;
    align-items: center;
}

.item1 {
    color: #fff;
    font-size: 1em;
    cursor: pointer;
    padding: 8px 15px;
    border-radius: 4px;
    transition: all 0.3s ease;
}

.item1:hover {
    background: rgba(255, 255, 255, 0.1);
    text-decoration: none;
}

.item2 {
    background-color: #fff;
    padding: 8px 20px;
    color: #003580;
    border-radius: 4px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
}

.item2:hover {
    background-color: #f0f0f0;
    transform: translateY(-2px);
}

/* User Badge Styles */
.badge {
    background-color: rgba(255, 255, 255, 0.1);
    padding: 8px 15px;
    border-radius: 25px;
    border: 1px solid rgba(255, 255, 255, 0.2);
    transition: all 0.3s ease;
}

.badge:hover {
    background-color: rgba(255, 255, 255, 0.2);
}

.circle {
    background-color: #FFC700;
    width: 35px;
    height: 35px;
    border-radius: 50%;
    margin-right: 12px;
}

.initial {
    font-weight: 600;
    font-size: 18px;
    color: #003580;
}

.text .name {
    font-size: 14px;
    font-weight: 600;
    color: #fff;
}

/* Dropdown Menu Styles */
.dropdown-content {
    position: absolute;
    right: 8%;
    top: 80px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.15);
    width: 220px;
    opacity: 0;
    visibility: hidden;
    transform: translateY(-10px);
    transition: all 0.3s ease;
}

.dropdown-content.show {
    opacity: 1;
    visibility: visible;
    transform: translateY(0);
}

.dropdown-content a {
    color: #333;
    padding: 12px 20px;
    text-decoration: none;
    display: flex;
    align-items: center;
    gap: 10px;
    transition: all 0.2s ease;
}

.dropdown-content a:hover {
    background-color: #f5f5f5;
    color: #003580;
}

/* Header Content Styles */
.header-content {
    max-width: 800px;
    margin: 120px auto 0;
    text-align: center;
    color: white;
    padding: 0 20px;
}

.header-content h1 {
    font-size: 2.8em;
    font-weight: 700;
    margin-bottom: 20px;
    text-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.header-content p {
    font-size: 1.2em;
    opacity: 0.9;
    margin-bottom: 30px;
}

/* Responsive Styles */
@media (max-width: 768px) {
    .navbar {
        padding: 15px 5%;
    }
    
    .header-content h1 {
        font-size: 2em;
    }
    
    .header-content p {
        font-size: 1em;
    }
    
    .containerItem {
        gap: 10px;
    }
    
    .item1, .item2 {
        padding: 6px 12px;
        font-size: 0.9em;
    }
}

@media (max-width: 480px) {
    header {
        height: 400px;
    }
    
    .navbar {
        padding: 10px 15px;
    }
    
    .logo a {
        font-size: 1.2em;
    }
    
    .dropdown-content {
        right: 15px;
        width: calc(100% - 30px);
    }
}
    
    // ... existing code ...

    </style>
</head>
<body>
	<% 
	    String User = (String) request.getAttribute("User"); 
		String userName=(String) request.getAttribute("UserName");
	%>

   <header>
    <nav class="navbar">
        <h1 class="logo"><a href="/">HotelBooking</a></h1>
        <div class="containerItem">
            <div class="item1"><a href="/HotelBookingSystem/admin/home">List your property</a></div>
            
            <% if (User != null) { %>
            <div>
                <div class="badge" id="user-btnAppend">
                    <div class="circle">
                        <span class="initial"><%= userName.charAt(0) %></span>
                    </div>
                    <div class="text">
                        <div class="name"><%= userName %></div>
                    </div>
                </div>
                
                <div id="user-menu" class="dropdown-content">
                    <a href="#"><i class="fas fa-user"></i> Manage Account</a>
                    <a href="#"><i class="fas fa-history"></i> Booking History</a>
                    <a href="/HotelBookingSystem/logOut"><i class="fas fa-sign-out-alt"></i> Logout</a>
                </div>
            </div>
            <% } else { %>
                <div class="item2" data-toggle="modal" data-target="#registerModal">Register</div>
                <div class="item2" data-toggle="modal" data-target="#loginModal">Login</div>
            <% } %>
        </div>
    </nav>
    
    <div class="header-content">
        <h1>Find Your Perfect Stay</h1>
        <p>Discover amazing places at exclusive deals</p>
    </div>
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
    
   <!-- Login Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginModalLabel">Welcome Back</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="loginForm" onsubmit="event.preventDefault(); submitForm2();">
                    <div class="form-group">
                        <label for="LoginEmail">Email address</label>
                        <input type="email" class="form-control" id="LoginEmail" placeholder="Enter your email" required>
                    </div>
                    <div class="form-group">
                        <label for="LoginPassword">Password</label>
                        <input type="password" class="form-control" id="LoginPassword" placeholder="Enter your password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Register Modal -->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="registerModalLabel">Create Account</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="registerForm" onsubmit="event.preventDefault(); submitForm();">
                    <div class="form-group">
                        <label for="Registername">Full Name</label>
                        <input type="text" class="form-control" id="Registername" placeholder="Enter your full name" required>
                    </div>
                    <div class="form-group">
                        <label for="Registeremail">Email address</label>
                        <input type="email" class="form-control" id="Registeremail" placeholder="Enter your email" required>
                    </div>
                    <div class="form-group">
                        <label for="Registerpassword">Password</label>
                        <input type="password" class="form-control" id="Registerpassword" placeholder="Create a password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Register</button>
                </form>
            </div>
        </div>
    </div>
</div>
    
    <script>
    
 // Add to your existing script section
    document.addEventListener('DOMContentLoaded', function() {
        const navbar = document.querySelector('.navbar');
        
        window.addEventListener('scroll', function() {
            if (window.scrollY > 50) {
                navbar.classList.add('scrolled');
            } else {
                navbar.classList.remove('scrolled');
            }
        });
    });
    
    	document.getElementById("user-btnAppend").addEventListener("click", function() {
    	  document.getElementById("user-menu").classList.toggle("show");
    	});

    	window.onclick = function(event) {
    	  if (!event.target.matches('#user-btnAppend')) {
    	    var dropdowns = document.getElementsByClassName("dropdown-content");
    	    for (var i = 0; i < dropdowns.length; i++) {
    	      var openDropdown = dropdowns[i];
    	      if (openDropdown.classList.contains('show')) {
    	        openDropdown.classList.remove('show');
    	      }
    	    }
    	  }
    	}
    
	    function submitForm2(){
	    	//window.location.href='';
	    	//console.log("clicked");
	    	/*var form = document.getElementById("registerForm");
	        var formData = new URLSearchParams(new FormData(form)).toString();*/
	        const email = document.getElementById("LoginEmail").value;
	        const password = document.getElementById("LoginPassword").value;
	        console.log(email);
	        console.log(password);
	        
	        formData="email="+email+"&password="+password;
	        
	        
	        var xhr = new XMLHttpRequest();
	        xhr.open("POST", "loginUser", true);
		    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	        
	        xhr.responseType = 'json';
	        
	        xhr.onload=function(){
	        	if (xhr.status === 200) {
	            	obj=xhr.response;
	            	if(obj.code==2){
	            		alert("Login successfull.");
	            		window.location.href='';
	            	}else if(obj.code==1){
	            		alert("Incorrect Password.");
	            	}else if(obj.code==0){
	            		alert("User not found.");
	            	}else{
	            		alert("Internal Server Error.");
	            	}
	            }else{
	            	
	            }
	        };
	        
	        xhr.send(formData);
	    }
    
    function submitForm() {
        const email = document.getElementById("Registeremail").value;
        const password = document.getElementById("Registerpassword").value;
        const name=document.getElementById("Registername").value;
        console.log(email);
        console.log(password);
        
        formData="email="+email+"&password="+password+"&name="+name;
        //console.log(formData);
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "registerUser", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        
        xhr.responseType = 'json';

        xhr.onload = function() {
            if (xhr.status === 200) {
            	obj=xhr.response;
            	if(obj.code>0){
            		alert("User Rigistered Successfully.");
            		window.location.href='';
            	}else if(obj.code==0){
            		alert("Already have account.\nPlease Try to login.");
            	}else if(obj.code==-1){
            		alert("Internal server error.");
            	}
            }else{
            	
            }
        };

        xhr.send(formData);
    }
    </script>
    
   <style>
   /* Modal Styles */
.modal-backdrop {
    background-color: rgba(0, 0, 0, 0.7);
}

.modal-dialog {
    max-width: 400px;
    margin: 2rem auto;
}

.modal-content {
    border: none;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    overflow: hidden;
}

.modal-header {
    background: linear-gradient(135deg, #003580, #0056b3);
    color: white;
    border-bottom: none;
    padding: 1.5rem;
    position: relative;
}

.modal-title {
    font-size: 1.5rem;
    font-weight: 600;
    letter-spacing: 0.5px;
}

.modal-header .close {
    color: white;
    opacity: 0.8;
    text-shadow: none;
    transition: all 0.2s ease;
    position: absolute;
    right: 1.5rem;
    padding: 0;
    margin: 0;
    font-size: 1.8rem;
}

.modal-header .close:hover {
    opacity: 1;
    transform: rotate(90deg);
}

.modal-body {
    padding: 2rem;
    background-color: #fff;
}

.form-group {
    margin-bottom: 1.5rem;
}

.form-group label {
    font-weight: 500;
    color: #2c3e50;
    margin-bottom: 0.5rem;
    font-size: 0.9rem;
}

.form-control {
    border: 2px solid #e9ecef;
    border-radius: 8px;
    padding: 0.75rem 1rem;
    font-size: 1rem;
    transition: all 0.2s ease;
}

.form-control:focus {
    border-color: #003580;
    box-shadow: 0 0 0 0.2rem rgba(0, 53, 128, 0.15);
}

.btn-primary {
    background: linear-gradient(135deg, #003580, #0056b3);
    border: none;
    border-radius: 8px;
    padding: 0.75rem 1.5rem;
    font-weight: 600;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    transition: all 0.3s ease;
    width: 100%;
    margin-top: 1rem;
}

.btn-primary:hover {
    background: linear-gradient(135deg, #0056b3, #003580);
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(0, 53, 128, 0.3);
}

.btn-primary:active {
    transform: translateY(0);
}

/* Form Validation Styles */
.form-control.is-invalid {
    border-color: #dc3545;
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='none' stroke='%23dc3545' viewBox='0 0 12 12'%3e%3ccircle cx='6' cy='6' r='4.5'/%3e%3cpath stroke-linejoin='round' d='M5.8 3.6h.4L6 6.5z'/%3e%3ccircle cx='6' cy='8.2' r='.6' fill='%23dc3545' stroke='none'/%3e%3c/svg%3e");
    background-repeat: no-repeat;
    background-position: right calc(0.375em + 0.1875rem) center;
    background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
}

.invalid-feedback {
    color: #dc3545;
    font-size: 0.875rem;
    margin-top: 0.25rem;
}

/* Additional Animation */
.modal.fade .modal-dialog {
    transform: scale(0.8);
    transition: transform 0.3s ease-out;
}

.modal.show .modal-dialog {
    transform: scale(1);
}

/* Responsive adjustments */
@media (max-width: 576px) {
    .modal-dialog {
        margin: 1rem;
    }
    
    .modal-body {
        padding: 1.5rem;
    }
    
    .form-control {
        font-size: 0.95rem;
    }
}
   </style>
   <!-- Hotel Listings Section -->
<section id="hotel-listings" class="py-5">
    <div class="container">
        <h2 class="section-title">Popular Hotels</h2>
        <p class="section-subtitle">Discover our most booked properties</p>
        
        <div class="row">
            <!-- Hotel Card 1 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="hotel-card">
                    <div class="hotel-card-image">
                        <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945" alt="Luxury Hotel">
                        <div class="hotel-card-badge">Featured</div>
                    </div>
                    <div class="hotel-card-body">
                        <div class="hotel-card-rating">
                            <span class="badge">4.8</span>
                            <div class="rating-text">
                                <span>Excellent</span>
                                <small>2,548 reviews</small>
                            </div>
                        </div>
                        <h3 class="hotel-card-title">Grand Plaza Hotel</h3>
                        <p class="hotel-card-location">
                            <i class="fas fa-map-marker-alt"></i>
                            Central London, UK
                        </p>
                        <div class="hotel-card-amenities">
                            <span><i class="fas fa-wifi"></i> Free WiFi</span>
                            <span><i class="fas fa-parking"></i> Parking</span>
                            <span><i class="fas fa-swimming-pool"></i> Pool</span>
                        </div>
                        <div class="hotel-card-footer">
                            <div class="price">
                                <small>From</small>
                                <span>$199</span>
                                <small>/night</small>
                            </div>
                            <button class="btn btn-primary">View Details</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Hotel Card 2 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="hotel-card">
                    <div class="hotel-card-image">
                        <img src="https://images.unsplash.com/photo-1522708323590-d24dbb6b0267" alt="Seaside Resort">
                        <div class="hotel-card-badge">Popular</div>
                    </div>
                    <div class="hotel-card-body">
                        <div class="hotel-card-rating">
                            <span class="badge">4.6</span>
                            <div class="rating-text">
                                <span>Very Good</span>
                                <small>1,873 reviews</small>
                            </div>
                        </div>
                        <h3 class="hotel-card-title">Seaside Resort & Spa</h3>
                        <p class="hotel-card-location">
                            <i class="fas fa-map-marker-alt"></i>
                            Miami Beach, USA
                        </p>
                        <div class="hotel-card-amenities">
                            <span><i class="fas fa-wifi"></i> Free WiFi</span>
                            <span><i class="fas fa-spa"></i> Spa</span>
                            <span><i class="fas fa-utensils"></i> Restaurant</span>
                        </div>
                        <div class="hotel-card-footer">
                            <div class="price">
                                <small>From</small>
                                <span>$299</span>
                                <small>/night</small>
                            </div>
                            <button class="btn btn-primary">View Details</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Hotel Card 3 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="hotel-card">
                    <div class="hotel-card-image">
                        <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945" alt="Mountain Lodge">
                        <div class="hotel-card-badge">New</div>
                    </div>
                    <div class="hotel-card-body">
                        <div class="hotel-card-rating">
                            <span class="badge">4.9</span>
                            <div class="rating-text">
                                <span>Outstanding</span>
                                <small>956 reviews</small>
                            </div>
                        </div>
                        <h3 class="hotel-card-title">Alpine Mountain Lodge</h3>
                        <p class="hotel-card-location">
                            <i class="fas fa-map-marker-alt"></i>
                            Swiss Alps, Switzerland
                        </p>
                        <div class="hotel-card-amenities">
                            <span><i class="fas fa-wifi"></i> Free WiFi</span>
                            <span><i class="fas fa-snowflake"></i> AC</span>
                            <span><i class="fas fa-mountain"></i> View</span>
                        </div>
                        <div class="hotel-card-footer">
                            <div class="price">
                                <small>From</small>
                                <span>$399</span>
                                <small>/night</small>
                            </div>
                            <button class="btn btn-primary">View Details</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<style>

/* Hotel Listings Styles */
#hotel-listings {
    background-color: #f8f9fa;
    padding: 80px 0;
}

.section-title {
    text-align: center;
    color: #003580;
    font-size: 2.5rem;
    font-weight: 700;
    margin-bottom: 10px;
}

.section-subtitle {
    text-align: center;
    color: #6c757d;
    margin-bottom: 40px;
}

.hotel-card {
    background: #fff;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 2px 15px rgba(0,0,0,0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    height: 100%;
}

.hotel-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 20px rgba(0,0,0,0.15);
}

.hotel-card-image {
    position: relative;
    height: 200px;
    overflow: hidden;
}

.hotel-card-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
}

.hotel-card:hover .hotel-card-image img {
    transform: scale(1.1);
}

.hotel-card-badge {
    position: absolute;
    top: 15px;
    right: 15px;
    background: rgba(0,53,128,0.9);
    color: white;
    padding: 5px 15px;
    border-radius: 20px;
    font-size: 0.8rem;
    font-weight: 600;
}

.hotel-card-body {
    padding: 20px;
}

.hotel-card-rating {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
}

.hotel-card-rating .badge {
    background: #003580;
    color: white;
    padding: 8px 12px;
    border-radius: 8px;
    font-size: 1.1rem;
    font-weight: 700;
    margin-right: 10px;
}

.rating-text {
    display: flex;
    flex-direction: column;
}

.rating-text span {
    color: #2c3e50;
    font-weight: 600;
}

.rating-text small {
    color: #6c757d;
}

.hotel-card-title {
    font-size: 1.3rem;
    font-weight: 700;
    color: #2c3e50;
    margin-bottom: 10px;
}

.hotel-card-location {
    color: #6c757d;
    font-size: 0.9rem;
    margin-bottom: 15px;
}

.hotel-card-location i {
    color: #003580;
    margin-right: 5px;
}

.hotel-card-amenities {
    display: flex;
    gap: 15px;
    margin-bottom: 20px;
}

.hotel-card-amenities span {
    color: #6c757d;
    font-size: 0.9rem;
}

.hotel-card-amenities i {
    color: #003580;
    margin-right: 5px;
}

.hotel-card-footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-top: 15px;
    border-top: 1px solid #eee;
}

.price {
    display: flex;
    align-items: baseline;
    gap: 4px;
}

.price span {
    color: #003580;
    font-size: 1.5rem;
    font-weight: 700;
}

.price small {
    color: #6c757d;
}

.hotel-card .btn-primary {
    background: #003580;
    border: none;
    padding: 8px 20px;
    border-radius: 8px;
    font-weight: 600;
    transition: all 0.3s ease;
}

.hotel-card .btn-primary:hover {
    background: #002855;
    transform: translateY(-2px);
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .section-title {
        font-size: 2rem;
    }
    
    .hotel-card-image {
        height: 180px;
    }
    
    .hotel-card-title {
        font-size: 1.2rem;
    }
}

@media (max-width: 576px) {
    .hotel-card-amenities {
        flex-wrap: wrap;
    }
    
    .hotel-card-footer {
        flex-direction: column;
        gap: 15px;
        text-align: center;
    }
    
    .price {
        justify-content: center;
    }
}
</style>

    <!-- ... existing code ... -->

<!-- Property Types Section -->
<section id="property-types" class="py-5">
    <div class="container">
        <h2 class="text-center mb-4">Browse by Property Type</h2>
        <div class="row">
            <div class="col-md-3 col-6 mb-4">
                <div class="property-type-card">
                    <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945" alt="Hotels">
                    <h3>Hotels</h3>
                    <p>2,014 properties</p>
                </div>
            </div>
            <div class="col-md-3 col-6 mb-4">
                <div class="property-type-card">
                    <img src="https://images.unsplash.com/photo-1522708323590-d24dbb6b0267" alt="Apartments">
                    <h3>Apartments</h3>
                    <p>1,203 properties</p>
                </div>
            </div>
            <div class="col-md-3 col-6 mb-4">
                <div class="property-type-card">
                    <img src="https://images.unsplash.com/photo-1449158743715-0a90ebb6d2d8" alt="Resorts">
                    <h3>Resorts</h3>
                    <p>532 properties</p>
                </div>
            </div>
            <div class="col-md-3 col-6 mb-4">
                <div class="property-type-card">
                    <img src="https://images.unsplash.com/photo-1510798831971-661eb04b3739" alt="Villas">
                    <h3>Villas</h3>
                    <p>845 properties</p>
                </div>
            </div>
        </div>
    </div>
</section>

<style>
/* Property Types Section Styles */
#property-types {
    background-color: #fff;
    padding: 60px 0;
}

#property-types h2 {
    color: #003580;
    font-weight: 700;
    margin-bottom: 40px;
}

.property-type-card {
    background: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    cursor: pointer;
}

.property-type-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.property-type-card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

.property-type-card h3 {
    font-size: 1.2em;
    color: #333;
    margin: 15px 15px 5px;
    font-weight: 600;
}

.property-type-card p {
    color: #666;
    margin: 0 15px 15px;
    font-size: 0.9em;
}
</style>

    
</body>
</html>
