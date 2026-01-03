<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Course</title>

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
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    position: relative;
}

/* Navbar */
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
    margin-right: 100px;
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
		  

/* Hero Section */
.hero {
    max-width: 900px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-top: 200px; /* Adjust this value as needed */
}

h1 {
    font-size: 100px;
    font-weight: 600;
}

.gradient-text {
    background: linear-gradient(90deg, #ff00ff, #9900ff);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

p {
    font-size: 40px;
    margin-top: 10px;
    color: #bbb;
}

.sub-text {
    font-size: 40px;
    color: #888;
    text-align: left;
    margin: 150px 0 0 0 ;
    width: 100%;
    padding-left: 40px;
}

.container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 50px;
        }
        .course-card {
            background: #111;
            border: 1px solid purple;
            border-radius: 10px;
            width: 300px;
            padding: 20px 15px 15px 20px;
            text-align: center;
            box-shadow: 0 0 10px rgba(128, 0, 128, 0.5);
            margin-bottom: 20px;
        }
        .course-card h3{
            margin: 10px 0px ;
        }
        .course-card img {
            width: 100%;
            border-radius: 10px;
        }
        .batch-tags {
            margin: 13px 0;
        }
        .batch-tags span {
            background: purple;
            padding: 5px 10px;
            border-radius: 5px;
            margin: 0 5px;
            font-size: 14px;
        }
        .discount {
            color: red;
            font-size: 18px;
            margin: 10px 0;
        }
        .price {
            font-size: 20px;
        }
        .old-price {
            text-decoration: line-through;
            color: gray;
            margin-left: 10px;
        }
        .discount-badge {
            background: white;
            color: black;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
            font-weight: bold;
            display: inline-block;
            margin:10px 0 ;
        }
        .view-btn {
            background: purple;
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            margin-top: 10px;
            cursor: pointer;
            text-decoration: none;
        }
        
        
        /* Footer */
		.footer {
		    background: black;
		    flex-direction: row; /* Ensures left-to-right layout */		    
		    padding: 70px;
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    width: 100%;
		    border-top: 1px solid purple;
		    box-shadow: 0 2px 20px rgba(255, 0, 255, 0.3);
		}
		
		.social-icons {
		    display: flex;
		    gap: 20px;
		}
		
		.social-icons img {
		    width: 40px;
		    height: 40px;
		}
		
		.footer-links {
		    display: flex;
		    flex-direction: row; /* Align columns side by side */
		    justify-content: center; /* Center the columns */
		    gap: 100px; /* Space between the columns */
		    color: white;
		    font-size: 18px;
		    margin-left: 0;
		}
		
		.footer-column {
		    text-align: left; /* Align text to the left */
		}
						
		.footer-column h3 {
		    font-size: 18px;
		    font-weight: bold;
		    margin-bottom: 10px;
		}
		
		.footer-column a {
		    display: block;
		    color: white;
		    text-decoration: none;
		    margin: 5px 0;
		    font-size: 16px;
		}

		.footer-column a:hover {
		    color: purple;
		}
		
		/* Responsive */
		@media (max-width: 768px) {
		    .footer {
		        flex-direction: column;
		        text-align: center;
		        gap: 30px;
		    }
		    .social-icons {
		        justify-content: center;
		    }
		    .footer-links {
		        flex-direction: column;
		        align-items: center;
		    }
		}

        
         .box-content{
		      width: 600px;
		      height: 600px;
		      background-color: #A60AA3;
		      background: radial-gradient(circle, rgba(80,0,80,1) 0%, rgba(0,0,0,1) 70%);
		      position: absolute;
		      left: 30%;
		      bottom: 75%;
		      z-index: -1; 
		}
		
		
		.box-content2{
		      width: 800px;
		      height: 800px;
		      background-color: #A60AA3;
		      background: radial-gradient(circle, rgba(80,0,80,1) 0%, rgba(0,0,0,1) 70%);
		      position: absolute;
		      left: 25%;
		      bottom: 25%;
		      z-index: -1; 
		}
		.instructor-name {
    color: #ccc;
    font-size: 16px;
    margin-top: 10px;
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
    
    <div class="hero">
        <h1>We’re not a <span class="gradient-text">course factory.</span></h1>
        <p>We focus on courses that really help.</p>
    </div>
    
    <p class="sub-text">Courses which do work</p>
    
     <div class="container">
        <div class="course-card" style="margin-right:150px;">
            <img src="Images/Group 30.png" alt="AI Course">
            <h3>Job Ready AI Powered Cohort: Web + DSA + Aptitude</h3>
            <p class="instructor-name">Instructor: Yash Jaiswal</p>
            
            <div class="batch-tags">
                <span>HINDI</span>
            </div>
            <p class="discount">Limited Time Discount</p>
            <p class="price">₹5999 (+ GST) <span class="old-price">₹11999</span> <span class="discount-badge">50% OFF</span></p><br>
            <a href="WebDevlopment.jsp" class="view-btn">View Details</a>
        </div>

        <div class="course-card">
            <img src="Images/Group 34.png" alt="Cyber Security Course">
            <h3>Online Ethical Hacking Course Penetration Testing Course</h3>
            <p class="instructor-name">Instructor: Rizwan Ali</p>
            
            <div class="batch-tags">
                <span>HINDI</span>
            </div>
            <p class="discount">Limited Time Discount</p>
            <p class="price">₹7000 (+ GST) <span class="old-price">₹15000</span> <span class="discount-badge">50% OFF</span></p><br>
            <a href="Ethical.jsp" class="view-btn">View Details</a>
        </div>

        <div class="course-card" style="margin-left:150px;">
            <img src="Images/Group 35.png" alt="Mobile App Course">
            <h3>Online Flutter App Development Course</h3>
            <p class="instructor-name">Instructor: Sunil Kumar</p>
            
            <div class="batch-tags">
                <span>HINDI</span>
            </div>
            <p class="discount">Limited Time Discount</p>
            <p class="price">₹7000 (+ GST) <span class="old-price">₹15000</span> <span class="discount-badge">50% OFF</span></p><br>
            <a href="Flutter.jsp" class="view-btn">View Details</a>
        </div>
    </div>
    
    <div class="box">
      <div class="box-content2"></div>
    </div>
    
    
    <div class="container">
        <div class="course-card" style="margin-right:150px;">
            <img src="Images/Group 31.png" alt="AI Course">
            <h3>Web Development Master Course @dot 1.0 Batch</h3>
                    <p class="instructor-name">Instructor: Rizwan Ali</p>
            
            <div class="batch-tags">
                <span>HINDI</span>
            </div>
            <p class="discount">Limited Time Discount</p>
            <p class="price">₹5999 (+ GST) <span class="old-price">₹11999</span> <span class="discount-badge">50% OFF</span></p><br>
            <a href="WebDevMaster.jsp" class="view-btn">View Details</a>
        </div>

        <div class="course-card">
            <img src="Images/Group 32.png" alt="Cyber Security Course">
            <h3>Complete nodejs + expressjs + mongodb</h3>
                    <p class="instructor-name">Instructor: Sunil Kumar</p>
            
            <div class="batch-tags">
                <span>HINDI</span>
            </div>
            <p class="discount">Limited Time Discount</p>
            <p class="price">₹6000 (+ GST) <span class="old-price">₹11999</span> <span class="discount-badge">50% OFF</span></p><br>
            <a href="Nodejs.jsp" class="view-btn">View Details</a>
        </div>

        <div class="course-card" style="margin-left:150px;">
            <img src="Images/Group 7.png" alt="Mobile App Course">
            <h3>Web Dev Cohort - Live 1.0</h3>
                    <p class="instructor-name">Instructor: Yash Jaiswal</p>
            
            <div class="batch-tags">
                <span>HINDI</span>
            </div>
            <p class="discount">Limited Time Discount</p>
            <p class="price">₹4000 (+ GST) <span class="old-price">₹8000</span> <span class="discount-badge">50% OFF</span></p><br>
            <a href="WebDev.jsp" class="view-btn">View Details</a>
        </div>
    </div>
    
    
    
    <footer class="footer">
        <div class="social-icons">
            <a href="#"><img src="Images/communication 1.png" alt="Facebook"></a>
            <a href="#"><img src="Images/social 1.png" alt="Instagram"></a>
            <a href="#"><img src="Images/linkedin 1.png" alt="LinkedIn"></a>
            <a href="#"><img src="Images/youtube 1.png" alt="YouTube"></a>
        </div>
        <div class="footer-links">
            <div class="footer-column">
                <h3>Legal</h3>
                <a href="#">Docs</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Terms of Service</a>
                <a href="#">Pricing Policy</a>
            </div>
            <div class="footer-column">
                <h3>Quick Link</h3>
                <a href="#">Courses</a>
                <a href="#">Cohort</a>
                <a href="#">Coding Hero</a>
                
            </div>
        </div>
    </footer>
  
  
  

</body>
</html>
