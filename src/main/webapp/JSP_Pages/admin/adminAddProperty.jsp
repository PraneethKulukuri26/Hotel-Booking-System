<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Property</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            background-color: #f5f5f5;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 2rem;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 2rem;
            text-align: center;
            font-size: 2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600;
            color: #2c3e50;
        }

        input[type="text"],
        input[type="number"],
        input[type="time"],
        input[type="tel"],    
        input[type="email"],
        textarea,
        select {
            width: 100%;
            padding: 0.8rem;
            border: 2px solid #e0e0e0;
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="time"]:focus,
        textarea:focus,
        select:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 5px rgba(52, 152, 219, 0.2);
        }
        
        

        textarea {
            height: 120px;
            resize: vertical;
        }

        .amenities-group {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 1rem;
            margin-top: 0.5rem;
        }

        .amenity-item {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .amenity-item input[type="checkbox"] {
            width: 18px;
            height: 18px;
            cursor: pointer;
        }

        .amenity-item label {
            display: inline;
            cursor: pointer;
        }

        .submit-btn {
            background-color: #3498db;
            color: white;
            padding: 1rem 2rem;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1.1rem;
            font-weight: 600;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #2980b9;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                margin: 1rem;
                padding: 1.5rem;
            }

            h2 {
                font-size: 1.75rem;
            }
        }

        @media (max-width: 480px) {
            .container {
                margin: 0;
                padding: 1rem;
                border-radius: 0;
            }

            .amenities-group {
                grid-template-columns: 1fr;
            }
        }
        
         .image-upload {
        border: 2px dashed #ddd;
        padding: 20px;
        text-align: center;
        margin-bottom: 15px;
    }
    
    .preview-images {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        margin-top: 10px;
    }
    
    .preview-images img {
        max-width: 200px;
        max-height: 150px;
        object-fit: cover;
    }
    </style>
</head>
<body>
<nav style="background-color: #003580; padding: 1em; margin-bottom: 20px;">
        <div style="max-width: 1200px; margin: 0 auto; display: flex; justify-content: space-between; align-items: center;">
            <div style="color: white; font-size: 1.5em;">HotelBooking</div>
            <div>
                <a href="adminDashboard" style="color: white; text-decoration: none; margin: 0 15px;">Dashboard</a>
                <a href="adminProperties" style="color: white; text-decoration: none; margin: 0 15px;">Properties</a>
                <a href="adminBookings" style="color: white; text-decoration: none; margin: 0 15px;">Bookings</a>
                <a href="adminUsers" style="color: white; text-decoration: none; margin: 0 15px;">Users</a>
                <a href="logout" style="color: white; text-decoration: none; margin: 0 15px;">Logout</a>
            </div>
        </div>
    </nav>

    <div class="container">

    <div class="container">
        <h2>Add New Property</h2>
        <form id="addPropertyForm" onsubmit="event.preventDefault(); submitForm();" enctype="multipart/form-data">
            <div class="form-group">
                <label for="hotelName">Hotel Name*</label>
                <input type="text" id="hotelName" name="hotelName" required>
            </div>
            
            <div class="form-group">
                <label for="description">Description*</label>
                <textarea id="description" name="description" required></textarea>
            </div>
            
            <div class="form-group">
                <label for="address">Address*</label>
                <textarea id="address" name="address" required></textarea>
            </div>
            
            <div class="form-group">
                <label for="city">City*</label>
                <input type="text" id="city" name="city" required>
            </div>
            
            <div class="form-group">
                <label for="state">State*</label>
                <input type="text" id="state" name="state" required>
            </div>
            
            <div class="form-group">
                <label for="zipCode">ZIP Code*</label>
                <input type="text" id="zipCode" name="zipCode" required>
            </div>
            
            <div class="form-group">
                <label for="phone">Contact Phone*</label>
                <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required>
                <small>Format: 10-digit number without spaces or dashes</small>
            </div>
            
            <div class="form-group">
                <label for="email">Contact Email*</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="totalRooms">Number of Rooms*</label>
                <input type="number" id="totalRooms" name="totalRooms" min="1" required>
            </div>
            
            <div class="form-group">
                <label for="pricePerDay">Price Per Day (₹)*</label>
                <input type="number" id="pricePerDay" name="pricePerDay" min="0" step="0.01" required>
            </div>
            
            <div class="form-group">
                <label for="checkInTime">Check-in Time*</label>
                <input type="time" id="checkInTime" name="checkInTime" required>
            </div>
            
            <div class="form-group">
                <label for="checkOutTime">Check-out Time*</label>
                <input type="time" id="checkOutTime" name="checkOutTime" required>
            </div>
            
            <div class="form-group">
                <label for="propertyType">Property Type*</label>
                <select id="propertyType" name="propertyType" required>
                    <option value="">Select Property Type</option>
                    <option value="hotel">Hotel</option>
                    <option value="resort">Resort</option>
                    <option value="villa">Villa</option>
                    <option value="apartment">Apartment</option>
                </select>
            </div>
            
            <div class="form-group">
			    <label>Amenities</label>
			    <div class="amenities-group">
			        <div class="amenity-item">
			            <input type="checkbox" id="wifi" name="amenities" value="wifi">
			            <label for="wifi">WiFi</label>
			        </div>
			        
			        <div class="amenity-item">
			            <input type="checkbox" id="parking" name="amenities" value="parking">
			            <label for="parking">Parking</label>
			        </div>
			        
			        <div class="amenity-item">
			            <input type="checkbox" id="pool" name="amenities" value="pool">
			            <label for="pool">Swimming Pool</label>
			        </div>
			        
			        <div class="amenity-item">
			            <input type="checkbox" id="restaurant" name="amenities" value="restaurant">
			            <label for="restaurant">Restaurant</label>
			        </div>
			        
			        <div class="amenity-item">
			            <input type="checkbox" id="gym" name="amenities" value="gym">
			            <label for="gym">Gym</label>
			        </div>
			    </div>
			</div>
			
			<div class="form-group">
                <label for="hotelImages">Hotel Images*</label>
                <div class="image-upload">
                    <input type="file" id="hotelImages" name="hotelImages" multiple accept="image/*" required>
                    <p>Drag and drop images here or click to select files</p>
                    <div class="preview-images" id="hotelImagesPreview"></div>
                </div>
            </div>
            
            <div class="form-group">
                <label for="roomImages">Room Images*</label>
                <div class="image-upload">
                    <input type="file" id="roomImages" name="roomImages" multiple accept="image/*" required>
                    <p>Drag and drop images here or click to select files</p>
                    <div class="preview-images" id="roomImagesPreview"></div>
                </div>
            </div>
            
            <button type="submit" class="submit-btn">Add Property</button>
        </form>
    </div>
</body>



<script>

	function submitForm(){
		var form = document.getElementById("addPropertyForm");
		var formData = new FormData(form);
		
		console.log(formData);
		
		var xhr = new XMLHttpRequest();
	        xhr.open("POST", "addProperty", true);
		    //xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	        
	        //xhr.responseType = 'json';
	        
	        xhr.onload=function(){
	        	if (xhr.status === 200) {
	        		console.log(xhr.response);
	            	obj=JSON.parse(xhr.response);
	            	
	            	
	            	if(obj.code==1){
	            		alert("Hotel Added Successfully.");
	            		window.location.href='/HotelBookingSystem/admin/home';
	            	}else{
	            		alert("Failed to add Hotel.");
	            	}
	        	}
	        	else{
	        		
	        	}
	        };
	        
	        xhr.send(formData);
	}


    function handleImagePreview(inputId, previewId) {
        const input = document.getElementById(inputId);
        const preview = document.getElementById(previewId);
        
        input.addEventListener('change', function() {
            preview.innerHTML = '';
            for (const file of this.files) {
                if (file.type.startsWith('image/')) {
                    const reader = new FileReader();
                    reader.onload = function(e) {
                        const img = document.createElement('img');
                        img.src = e.target.result;
                        preview.appendChild(img);
                    }
                    reader.readAsDataURL(file);
                }
            }
        });
    }

    handleImagePreview('hotelImages', 'hotelImagesPreview');
    handleImagePreview('roomImages', 'roomImagesPreview');
</script>

</html>