<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Development + DSA +Aptitude</title>

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
		    margin-right: 100px;
		    gap: 50px;
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
		
		
		


       .checkout-container {
            margin: 20px 0 90px 320px;
            max-width: 900px;
            width: 100%;
            background: #111;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 15px rgba(255, 0, 255, 0.3);
        }

        .checkout-container h2 {
            margin-bottom: 10px;
        }

        .content {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        /* Left Section */
        .course-details {
            flex: 1;
            background: #181818;
            padding: 15px;
            border-radius: 10px;
            border: 1px solid purple;
        }

        .course-img {
            width: 100%;
            border-radius: 10px;
        }

        .course-info {
            margin-top: 10px;
        }

        .course-info h3 {
            font-size: 18px;
        }

        .course-price {
            font-size: 20px;
            font-weight: bold;
            margin: 10px 0;
        }

        .coupon-box {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }

        .coupon-box input {
            flex: 1;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: #333;
            color: white;
            outline: none;
        }

        .apply-btn {
            padding: 10px 15px;
            background: purple;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .apply-btn:hover {
            background: #a020f0;
        }

        /* Right Section */
        .payment-details {
            flex: 1;
            background: #181818;
            padding: 15px;
            border-radius: 10px;
        }

        .payment-box {
            padding: 15px;
            border-radius: 5px;
            background: #222;
        }

        .payment-box p {
            display: flex;
            justify-content: space-between;
            margin-bottom: 5px;
        }

        .total-amount {
            border-top: 1px solid purple;
            padding-top: 10px;
            font-size: 18px;
            font-weight: bold;
        }

        .checkout-btn {
            width: 100%;
            background: purple;
            padding: 12px;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            margin-top: 10px;
            cursor: pointer;
            transition: 0.3s;
            text-decoration: none;
        }

        .checkout-btn:hover {
            background: #a020f0;
        }

        /* Support Section */
        .support-info {
            background: #181818;
            padding: 0px;
            border-radius: 10px;
            margin-top: 20px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            text-align: center;
        }

        .support-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 10px;
        }

        .check-icon {
            font-size: 20px;
            color: limegreen;
            margin-bottom: 5px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
          

            .course-details,
            .payment-details {
                width: 100%; /* Full width for smaller screens */
            }

            .coupon-box {
                flex-direction: column;
                gap: 5px;
            }
        }
      
        
        
        
      
        
        
        @media (max-width: 768px) {
		    .navbar {
		        flex-direction: column;
		        align-items: center;
		        padding: 10px;
		    }
		
		    .navbar div {
		        gap: 15px;
		    }
		
		    .container {
		        font-size: 24px;
		    }
		
		    .buttons {
		        gap: 10px;
		    }
		
		    .button {
		        width: 150px;
		        font-size: 16px;
		    }
		
		    .course-container {
		        flex-direction: column;
		    }
		}

		@media (max-width: 480px) {
		    .navbar h1 {
		        font-size: 20px;
		    }
		
		    .navbar a {
		        font-size: 14px;
		    }
		
		    .container {
		        font-size: 20px;
		    }
		
		    .button {
		        width: 140px;
		        font-size: 14px;
		        padding: 8px;
		    }
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
        <h1>CodeHub</h1>
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
    
    
    
     <div class="checkout-container">
        <h2>Your Course</h2>

        <div class="content">
            <!-- Course Details -->
            <div class="course-details">
                <img src="Images/Group 34.png" alt="Course" class="course-img">
                <div class="course-info">
                    <h3>Web Development Master Course @dot 1.0 Batch</h3>
                    <p class="course-price">₹7000</p>
                    <div class="coupon-box">
                        <input type="text" placeholder="Enter Coupon Code">
                        <button class="apply-btn">Apply Coupon</button>
                    </div>
                </div>
            </div>

            <!-- Payment Details -->
            <div class="payment-details">
                <h2>Payment Details</h2>
                <div class="payment-box">
                    <p><span>(Base Amount)</span> <span>₹4529</span></p>
                    <p><span>(Platform fees)</span> <span>₹2471</span></p>
                    <p><span>(GST @18%)</span> <span>₹1080</span></p>
                    <p class="total-amount"><span>Total Amount</span> <span>₹7000</span></p>
                </div><br><br>
                <a href="details.jsp" class="checkout-btn">Proceed to Checkout</a>
            </div>
        </div>

        <!-- Payment & Support Info -->
        <div class="support-info">
            <div class="support-item">
                <div class="check-icon">✔</div>
                <p>3-Days Refund Policy</p>
            </div>
            <div class="support-item">
                <div class="check-icon">✔</div>
                <p>Contact Us: 7549637198</p>
            </div>
            <div class="support-item">
                <div class="check-icon">✔</div>
                <p>Get Course Completion Certificate</p>
            </div>
        </div>

    </div>
    
    
    
    
    
    
   

</body>
</html>