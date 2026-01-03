<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>CodeHub Payment</title>
    <style>
         /* General Reset */
		* {
		    margin: 0;
		    padding: 0;
		    box-sizing: border-box;
		    font-family: 'Poppins', sans-serif;
		}
		
		/* Body Styling */
		 body {
            background: black;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 150px;
        }


		.navbar {
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    padding: 15px 40px;
		    background: #111;
		    box-shadow: 0 2px 10px rgba(255, 0, 255, 0.3);
		    width: 100%;
		    position: fixed;
		    top: 0;
		    left: 0;
		}
		
		.navbar h1 {
		    font-size: 28px;
		    color: purple;
		}
		
		.navbar div {
		    display: flex;
		    align-items: center;
		    gap: 50px;
		    margin-right: 90px;
		    
		}
		
		.navbar a {
		    text-decoration: none;
		    color: white;
		    font-size: 18px;
		}
		
		.nav-profile {
		    width: 40px;
		    height: 40px;
		    border-radius: 50%;
		}
		   
		
        .container {
            display: flex;
            justify-content: center;
            padding: 20px;
            gap: 20px;
        }
        .price-summary {
            background-color: #333;
            padding: 15px;
            border-radius: 10px;
            width: 30%;
            display: flex;
            flex-direction: column;
            gap: 10px;
            flex-shrink: 0;
            height: 150px; /* Adjust height dynamically based on content */
        }
        .price-summary h2 {
            color: #a855f7;
            margin: 0;
        }
        .price-summary p {
            font-size: 18px;
            margin: 0;
        }
        .payment-options {
            background-color: #222;
            padding: 15px;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            max-width: fit-content;
            overflow: hidden;
        }
        .payment-img {
            max-width: 100%;
            height: 500px;
            object-fit: contain;
            border-radius: 10px;
        }
        
        .box-content{
		      width: 600px;
		      height: 600px;
		      background-color: #A60AA3;
		      background: radial-gradient(circle, rgba(80,0,80,1) 0%, rgba(0,0,0,1) 70%);
		      position: absolute;
		      left: 30%;
		      bottom: 35%;
		      z-index: -1; 
		}
		
		     
    </style>
</head>
<body>
    <div class="navbar">
        <h1 style="color: purple;">CodeHub</h1>
        <div>
            <a href="Home2.jsp">Home</a>
            <a href="courses2.jsp">Course</a>
            <a href="About2.jsp">About</a>   
        </div>
            <a href="Profile.jsp"><img src="Images/profile.png" alt="Profile" class="nav-profile"></a>          
    </div>
    
     <div class="box">
      <div class="box-content"></div>
    </div>

    <div class="container">
        <div class="price-summary">
            <h2>CodeHub</h2>
            <p>Price Summary</p>
            <p>₹5999</p>
            <p>Using as +91 82526 41019</p>
        </div>

        <div class="payment-options">
            <h2>Payment Options</h2>
            <img src="Images/QR.jpg" alt="Payment Options" class="payment-img">
        </div>
    </div>
</body>
</html>
