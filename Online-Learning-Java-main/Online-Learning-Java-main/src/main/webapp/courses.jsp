<%@ page import="java.sql.*" %>
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
}

.navbar a {
    text-decoration: none;
    color: white;
    font-size: 18px;
}

.navbar .auth-buttons {
    display: flex;
    gap: 15px;
}

.navbar .login, 
.navbar .signup {
    background: purple;
    padding: 8px 20px;
    border-radius: 30px;
    color: white;
    font-size: 18px;
    text-decoration: none;
    transition: background 0.3s;
}

.auth-buttons .login:hover, 
.auth-buttons .signup:hover {
    background: #8a2be2;
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
    display: grid;
    grid-template-columns: repeat(3, 1fr); /* 3 cards per row */
    gap: 80px; /* Reduced gap for a tighter layout */
    padding: 50px;
    justify-content: center;
}

.course-card {
    background: #111;
    border: 1px solid purple;
    border-radius: 10px;
    width: 300px;  /* Reduced card width */
    padding: 20px 15px 30px 20px;
    text-align: center;
    box-shadow: 0 0 10px rgba(128, 0, 128, 0.5);
    transition: transform 0.3s;
    margin: 10px auto; /* Center cards horizontally */
}
.course-card:hover {
    transform: translateY(-5px);
}
        .course-card h2{
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
            margin-top: 20px ;
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
		    .container {
		        grid-template-columns: 1fr; /* 1 card per row on small screens */
		    }
		}
		@media (max-width: 1024px) {
		    .container {
		        grid-template-columns: repeat(2, 1fr); /* 2 cards per row on medium screens */
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
            <a href="Home.jsp">Home</a>
            <a href="courses.jsp">Course</a>
            <a href="About.jsp">About</a>
        </div>
        <div class="auth-buttons">
            <a href="Login.jsp" class="login">Login</a>
            <a href="Signup.jsp" class="signup">Sign up</a>
        </div>
    </div>
    
     <div class="box">
      <div class="box-content"></div>
    </div>
    
    <div class="hero">
        <h1>We’re not a <span class="gradient-text">course factory.</span></h1>
        <p>We focus on courses that really help.</p>
    </div>
    
    <p class="sub-text">Courses which do work</p>
    
    
    
     <div class="box">
      <div class="box-content2"></div>
    </div> 
    
    
   
    
    <!-- Courses Section -->
<div class="container">
<%
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

        // Query to fetch course data
        String sql = "SELECT c.course_id, c.course_name, c.course_image, i.name AS instructor, c.description, c.course_price " +
                     "FROM courses c " +
                     "JOIN instructors i ON c.instructor_id = i.id";
        stmt = conn.prepareStatement(sql);
        rs = stmt.executeQuery();

        while (rs.next()) {
%>
    <div class="course-card">
        <img src="<%= rs.getString("course_image") != null ? rs.getString("course_image") : "images/default-course.png" %>" 
             alt="<%= rs.getString("course_name") %>">
        <h2><%= rs.getString("course_name") %></h2>
        <h4><%= rs.getString("description") %></h4>
        <p class="instructor-name">Instructor: <%= rs.getString("instructor") %></p>
       
        <div class="batch-tags">
            <span>HINDI</span>
        </div>
        <p class="discount">Limited Time Discount</p>
        <p class="price">₹<%= rs.getInt("course_price") %>
         <span class="old-price">₹<%= rs.getInt("course_price") * 2 %></span> 
         <span class="discount-badge">50% OFF</span>
         </p></br>
            <a href="Login.jsp" class="view-btn">View Details</a>
    </div>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
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
