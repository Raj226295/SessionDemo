<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CodeHub</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
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



        .hero {
            text-align: center;
            padding: 50px 20px;
        }
        .hero h1 {
            font-size: 75px;
        }
        .highlight {
            color: purple;
        }
        
        .image{
		    position: absolute;
		    top: 80%;
		    left:1%;
		    margin-top: 50px;
		    z-index: -1; 
		}
		.image img{
		    width: 80%;
		    height: auto;
		    margin-top: 10px;
		}
		
		
		.trusted-section {
            position: absolute;
            top: 85%;
            right: 5%;
            width: 40%;
            text-align: left;
            margin-top: 60px;
            z-index: -1; 
        }
        .trusted-section h1 {
            font-size: 48px;
        }
        .trusted-section p {
            font-size: 20px;
            margin-top: 20px;
        }
        .highlight {
            color: purple;
        }
		
		
		
		.button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #590d82;
            border: 2px solid #9141ac;
            border-radius: 25px;
            text-decoration: none;
        }
        .button:hover {
            background-color: #9141ac;
        }
        h1 {
            font-size: 48px;
        }
        .highlight {
            color: #c026d3;
        }
        p {
            font-size: 20px;
            margin-top: 20px;
        }
		
		
        
        .mentorship {
            text-align: center;
            margin-top: 600px;
            font-size:38px;
        }
        .buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 50px;
            
        }
        .buttons button {
            padding: 15px 30px;
            background: black;
            border: 2px solid purple;
            color: white;
            border-radius: 35px;
            cursor: pointer;
            font-size:30px;
           
        }
        .btn-purple {
            background: purple;
            color: white;
            border-radius: 25px;
            padding: 10px 20px;
            text-decoration: none;
            border: none;
            font-size: 25px;
            justify-content: center;
            cursor: pointer;
            
        }
        .btn-purple:hover{
            background: #8a2be2;
        }
        .web-dev-section {
		    margin-top: 80px;
		    display: flex;
		    flex-wrap: wrap;
		    justify-content: space-between; /* Ensure text and image are spaced */
		    align-items: center;
		    padding: 50px 20px;
		    
            justify-content: center;
          
            gap: 20px;
           
		}
		
		.web-dev-text {
		    max-width: 500px;
		    text-align: left;
		    margin-right: 100px;
		    
		}
		
		.web-dev-section img {
		    max-width: 650px;
		    height: auto;
		}

        .highlight {
            color: purple;
        }
        .companies-section {
            text-align: center;
            padding: 50px 20px;
            font-size: 20px;
            display:flex;
            justify-content: center;
            gap: 20px;
            padding: 50px;
            flex-wrap: wrap;
                        
            
        }
        .companies-section h2{
            margin-top: 200px;
            margin-right: 200px;
            font-size: 50px;
        }
        
        
        
        .container{
            display: grid;
		    grid-template-columns: repeat(3, 1fr); /* 3 cards per row */
		    gap: 30px; /* Reduced gap for a tighter layout */
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
            margin: 10px 0;
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
        }
        .view-btn {
            background: purple;
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            margin-top: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .view-btn:hover{
            background: #8a2be2;
        }
        
        
        .footer {
		    display: flex;
		    flex-direction: row; /* Ensures left-to-right layout */
		    justify-content: space-between;
		    align-items: center;
		    padding: 40px 60px;
		    border-top: 1px solid purple;
		    box-shadow: 0 2px 20px rgba(255, 0, 255, 0.3);
		}
		
		.social-icons {
		    display: flex;
		    gap: 20px;
		}
		
		.social-icons a {
		    text-decoration: none;
		}
		
		.social-icons img {
		    width: 40px;
		    height: 40px;
		}
		
		.footer-links {
		    display: flex;
		    gap: 100px;
		     margin-left: auto; /* Pushes footer links to the right */
		}
		
		.footer-column {
		    text-align: left;
		}
		
		.footer-column h3 {
		    margin-bottom: 10px;
		    font-size: 18px;
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
		
		/* Responsive adjustments */
	@media (max-width: 768px) {
    .navbar {
	        flex-direction: column;
	        align-items: center;
	        text-align: center;
            }
    
     nav a {
                padding: 10px;
                display: block;
                width: 100%;
                text-align: center;
            }
    
    .navbar div {
        flex-direction: column;
        gap: 10px;
    }
    
    .hero h1 {
        font-size: 40px;
    }

    .buttons button {
        width: 100%;
        margin: 5px 0;
    }
    .buttons {
        flex-direction: column; /* Stack buttons */
        align-items: center;
    }

    .container {
        flex-direction: column;
        align-items: center;
        grid-template-columns: 1fr; /* 1 card per row on small screens */
        
    }

    .course-card {
        width: 90%;
    }
     .web-dev-section {
        flex-direction: column; /* Stack text & image */
        text-align: center;
    }

     .trusted-section {
        position: static; /* Remove absolute positioning */
        text-align: center;
        width: 90%;
        margin: auto;
    }
    .footer {
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .footer-links {
        flex-direction: column;
        text-align: center;
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
		      bottom: 35%;
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
        <h1 style="color: purple;">CodeHub</h1>
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
        <h1>We only <span class="highlight">teach</span><br> what we are really really good at.<br> Get ready</h1>
    </div>
    
    <div>
      <div class="image">
        <img src="Images/Group 5.png" alt="Image5" />

        <div class="image2">
          <img src="Images/Group 8.png" alt="Image2" />
        </div>

        <div class="image3">
          <img src="Images/Group 6.png" alt="Image3" />
        </div>
      </div>
     </div>
      
      
       <div class="trusted-section">
          <a href="#" class="button">Our Stats</a>
		    <h1>Trusted by <span class="highlight">2M+</span> students</h1>
		    <p>Expand your skills <span class="highlight">with our trusted platform,</span><br>chosen by millions worldwide.</p>
       </div>
    
    
     
    <div class="mentorship">
        <h2>Mentorship Programs</h2>
        <p>Choose your program, get certified, and grab new career opportunities.</p>
        <div class="buttons">
            <button style="margin-right:100px;">Web Development</button>
            <button>Cyber Security</button>
            <button style="margin-left:100px;">App Development</button>
        </div>
    </div>
    
    
    
    <div class="web-dev-section">
        <div class="web-dev-text">
            <button class="btn-purple" style="margin-bottom:10px;">Web Dev Cohort</button>
            <h2>Master full-stack web development with Web Dev Cohort -</h2>
            <p>Learn HTML, CSS, JS, React, Next.js, Node, Docker, databases like MongoDB/PostgreSQL, DevOps with AWS (ECR, EC2, CloudFront), modern workflows like Turbo Repo, TypeScript, and GitHub CI/CD.</p>
            <a href="Login.jsp"><button class="btn-purple" style="margin-top:10px;">Join now</button></a>
        </div>
        <img src="Images/Group 7.png" alt="Web Dev Cohort" class="img-fluid">
    </div>
    
    
    <div class="companies-section">
        <h2>Companies Where Our <br><span class="highlight">Students Work</span></h2>
        <div class="companies-logos">
            <div class="company-logo"><img src="Images/Group 29 (1).png" alt="RapidOps" class="img-fluid"></div>
        </div>
    </div>
    
    
    <div class="text-center my-4">  
        <a href="courses.jsp" class="btn-purple">Course</a>
    </div>
    
    
    
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
                <a href="Privacy_policy.jsp">Privacy Policy</a>
                <a href="#">Terms of Service</a>
                <a href="#">Pricing Policy</a>
            </div>
            <div class="footer-column">
                <h3>Quick Link</h3>
                <a href="courses.jsp">Courses</a>
                <a href="#">Cohort</a>
                <a href="#">Coding Hero</a>
                
            </div>
        </div>
    </footer>
</body>
</html>
