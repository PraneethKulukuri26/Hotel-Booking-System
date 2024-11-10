<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in to Manage Your Property</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        /* Styling for the container */
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }

        /* Blue top bar */
        .top-bar {
            background-color: #003580;
            padding: 10px 40px 10px 20px;
            text-align: left;
            color: white;
            font-weight: bold;
            font-size: 20px;
        }

        .top-bar a {
            width: fit-content;
            cursor: pointer;
            text-decoration: none;
            color: white;
        }

        /* Form elements */
        .form-control {
            height: 50px;
            padding: 10px;
            margin-bottom: 20px;
            text-align: left;
        }

        /* Align email label to left */
        .form-label {
            text-align: left;
            display: block;
            font-weight: bold;
            margin-left: 5px;
        }

        /* Button styling */
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            padding: 10px 0;
            font-size: 18px;
        }

        .btn-outline-primary {
            margin-top: 20px;
        }

        /* Footer text and links */
        .footer-text {
            font-size: 14px;
            margin-top: 30px;
        }

        .footer-text a {
            color: #007bff;
        }

        /* Additional spacing and padding */
        .mt-4 {
            margin-top: 1.5rem;
        }

        .mt-5 {
            margin-top: 3rem;
        }
        
    .login-container {
        max-width: 450px;
        margin: 30px auto;
        padding: 30px;
        background-color: white;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
        border-radius: 12px;
        text-align: center;
    }

    /* Improved top bar */
    .top-bar {
        background: linear-gradient(135deg, #003580 0%, #004bb9 100%);
        padding: 15px 40px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    .top-bar a {
        font-size: 24px;
        transition: opacity 0.2s;
    }

    .top-bar a:hover {
        opacity: 0.9;
    }

    /* Enhanced form elements */
    .form-control {
        height: 52px;
        padding: 12px 16px;
        border: 1px solid #e0e0e0;
        border-radius: 8px;
        transition: all 0.3s ease;
    }

    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.15);
    }

    /* Button improvements */
    .btn {
        height: 52px;
        font-weight: 600;
        border-radius: 8px;
        transition: all 0.3s ease;
    }

    .btn-primary {
        background: linear-gradient(135deg, #007bff 0%, #0056b3 100%);
        border: none;
    }

    .btn-primary:hover {
        transform: translateY(-1px);
        box-shadow: 0 4px 12px rgba(0, 123, 255, 0.2);
    }

    .btn-outline-primary {
        border-width: 2px;
    }

    .btn-outline-primary:hover {
        background-color: #f8f9fa;
    }

    /* Responsive adjustments */
    @media (max-width: 576px) {
        .login-container {
            margin: 15px;
            padding: 20px;
        }

        .top-bar {
            padding: 12px 20px;
        }

        .btn {
            height: 48px;
        }
    }

    /* Animation improvements */
    .loginDiv, .loginDivPassword, .RigisterDiv, .RegisterPassword {
        transition: all 0.4s ease-in-out;
    }

    /* Links styling */
    a {
        transition: color 0.2s;
    }

    a:hover {
        color: #0056b3;
        text-decoration: none;
    }

    /* Form validation visual feedback */
    .form-control.is-invalid {
        border-color: #dc3545;
        background-image: url("data:image/svg+xml,...");
    }

    .form-control.is-valid {
        border-color: #28a745;
        background-image: url("data:image/svg+xml,...");
    }
    </style>
</head>

<body>
    <!-- Top bar -->
    <div class="top-bar">
        <a href="/HotelBookingSystem/">HotelBooking</a>
    </div>

    <!-- Login form container -->
    <div class="login-container">

        <!-- LoginDiv -->
        <div class="loginDiv">
            <!-- Title -->
            <h3 class="mt-4" style="font-size:22px;font-weight: bold;">Sign in to manage your property</h3>

            <!-- Username input -->
            <form>
                <div class="form-group mt-4">
                    <label for="username" class="form-label">Email</label>
                    <input id="loginDevInput" type="text" id="username" class="form-control" placeholder="Enter your mail">
                </div>

                <!-- Next button -->
                <button id="go-to-LoginPassword-btn" type="submit" class="btn btn-primary btn-block w-100">Next</button>
            </form>

            <!-- Help link -->
            <a href="#" class="d-block mt-4">Having trouble signing in?</a>

            <!-- Horizontal divider -->
            <hr>

            <!-- Create partner account button -->
            <button type="button" class="btn btn-outline-primary w-100" id="create-account-btn">Create your partner account</button>
        </div>
        
        <div class="loginDivPassword" style="display:none;">
            <!-- Title -->
            <h3 class="mt-4" style="font-size:22px;font-weight: bold;">Sign in to manage your property</h3>

            <!-- Username input -->
            <div >
                <div class="form-group mt-4">
                    <label for="Login-password" class="form-label">Password</label>
                    <input type="password" id="Login-password" class="form-control" placeholder="Enter Password">
                </div>

                <!-- Next button -->
                <button id="loginUserAdminBtn" type="submit" class="btn btn-primary btn-block w-100">Login</button>
            </div>

            <!-- Help link -->
            <a href="#" class="d-block mt-4">Having trouble signing in?</a>

            <!-- Horizontal divider -->
            <hr>

            <!-- Create partner account button -->
            <button type="button" class="btn btn-outline-primary w-100" id="create-account-btn">Back</button>
        </div>

        <!-- RigisterDiv -->
        <div class="RigisterDiv" style="display:none;">
            <!-- Title -->
            <h3 class="mt-4" style="font-size:22px;font-weight: bold;">Register your partner account</h3>

            <!-- Username input -->
            <form>
                <div class="form-group mt-4">
                    <label for="register-username" class="form-label">Email</label>
                    <input type="text" id="register-username" class="form-control" placeholder="Enter your email">
                </div>

                <!-- Register button -->
                <button type="button" class="btn btn-primary btn-block w-100" id="go-to-password-btn">Next</button>
            </form>

            <!-- Horizontal divider -->
            <hr>

            <!-- Back to Login button -->
            <button type="button" class="btn btn-outline-primary w-100" id="back-to-login-btn">Back to Login</button>
        </div>
        
        <!-- RegisterPassword div -->
        <div class="RegisterPassword" style="display:none;">
            <!-- Title -->
            <h3 class="mt-4" style="font-size:22px;font-weight: bold;">Register your partner account</h3>

            <!-- Password input fields -->
            <div>
                <div class="form-group mt-4">
                    <label for="register-password" class="form-label">Password</label>
                    <input type="password" id="register-password" class="form-control" placeholder="Enter Password">
                </div>
                
                <div class="form-group mt-4">
                    <label for="confirm-password" class="form-label">Confirm password</label>
                    <input type="password" id="confirm-password" class="form-control" placeholder="Enter Password again">
                </div>

                <!-- Register button -->
                <button id="RegisterButtonUser" type="submit" class="btn btn-primary btn-block w-100">Register</button>
            </div>

            <!-- Horizontal divider -->
            <hr>

            <!-- Back to Register div button -->
            <button type="button" class="btn btn-outline-primary w-100" id="back-to-register-btn">Back</button>
        </div>

        <hr>

        <!-- Footer text -->
        <p class="footer-text mt-4">
            Do you have questions about your property or the extranet?
            Visit <a href="#">Partner Help</a> or ask another question on the <a href="#">Partner Community</a>.
        </p>

        <!-- Terms and conditions -->
        <p class="footer-text">
            By signing in or creating an account, you agree with our <a href="#">Terms & conditions</a> and <a href="#">Privacy statement</a>.
        </p>

        <!-- Copyright -->
        <p class="footer-text">
            All rights reserved.<br>
        </p>
    </div>

    <!-- jQuery script for toggling divs with animation -->
    <script>
    
    
    $(document).ready(function () {
    	
    	$('#loginUserAdminBtn').click(function () {
			var pass=$('#Login-password').val().trim();
			
			if(pass==""){
    			alert("Password field cannot be empty.");
			}else{
				var email=$('#loginDevInput').val();
				
				formData="email="+email+"&password="+pass;
				
				var xhr = new XMLHttpRequest();
    	        xhr.open("POST", "/HotelBookingSystem/admin/Login", true);
    	        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    	        
    	        xhr.onload=function(){
    	        	if(xhr.status===200){
    	        		obj=JSON.parse(xhr.response);
    	        		if(obj.code==2){
    	        			alert("Login Successfully.");
    	            		window.location.href='/HotelBookingSystem/admin/home';
    	        		}else if(obj.code==1){
    	            		alert("Incorrect Password.");
    	            	}else if(obj.code==0){
    	            		alert("User not found.");
    	            	}else{
    	            		alert("Internal Server Error.");
    	            	}
    	        	}
    	        };
    	        
    	        xhr.send(formData);
			}
		});
    	
    	
    	$('#RegisterButtonUser').click(function(){
    		console.log("Treeweeww");
    		var pass=$('#register-password').val().trim();
    		var cPass=$('#confirm-password').val().trim();
    		console.log(pass);
    		console.log(cPass);
    		
    		if(pass==="" || cPass===""){
    			alert("Password field cannot be empty.");
    		}else if(pass!==cPass){
    			alert("Password did not match.");
    		}
    		else{
    			var email=$('#register-username').val().trim();
    			
    			var formData = "email=" + encodeURIComponent(email) + "&password=" + encodeURIComponent(pass) + "&confirmPassword=" + encodeURIComponent(cPass);

    			var xhr = new XMLHttpRequest();
    	        xhr.open("POST", "/HotelBookingSystem/admin/Register", true);
    	        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    	        
    	        xhr.onload = function() {
    	            if (xhr.status === 200) {
    	            	obj=JSON.parse(xhr.response);
    	            	//obj={};
    	            	//obj.code=-1;
    	            	if(obj.code==-2){
    	            		alert("Password did not match.");
    	            	}else if(obj.code>1){
    	            		alert("Rigistered Successfully.");
    	            		window.location.href='/HotelBookingSystem/admin/home';
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
    	});
    	
    	
    	
        // Show RegisterDiv and hide loginDiv with animation
        $('#create-account-btn').click(function () {
            $('.loginDiv').slideUp(400, function () {
                $('.RigisterDiv').slideDown(400);
            });
        });

        // Show loginDiv and hide RegisterDiv with animation
        $('#back-to-login-btn').click(function () {
            $('.RigisterDiv').slideUp(400, function () {
                $('.loginDiv').slideDown(400);
            });
        });

        // Validate email input before showing RegisterPassword
        $('#go-to-password-btn').click(function () {
            var email = $('#register-username').val().trim(); // Get the value of the email input

            if (email === "") {
                // Show an alert or any error message
                alert("Email field cannot be empty.");
            } else {
                // Proceed if the input is not empty
                $('.RigisterDiv').slideUp(400, function () {
                    $('.RegisterPassword').slideDown(400);
                });
            }
        });

        // Show RegisterDiv and hide RegisterPassword with animation
        $('#back-to-register-btn').click(function () {
            $('.RegisterPassword').slideUp(400, function () {
                $('.RigisterDiv').slideDown(400);
            });
        });

        // Show loginDivPassword when submitting loginDiv
        $('#go-to-LoginPassword-btn').click(function (e) {
            e.preventDefault(); // Prevent form submission

            var email = $('#loginDevInput').val().trim(); // Get the value of the email input
            if (email === "") {
                alert("Email field cannot be empty."); // Display error message
            } else {
                $('.loginDiv').slideUp(400, function () {
                    $('.loginDivPassword').slideDown(400);
                });
            }
        });

        // Handle "Back" button in loginDivPassword to return to loginDiv
        $('.loginDivPassword .btn-outline-primary').click(function (e) {
            e.preventDefault(); // Prevent default button action
            $('.loginDivPassword').slideUp(400, function () {
                $('.loginDiv').slideDown(400);
            });
        });
        
    });



    </script>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
