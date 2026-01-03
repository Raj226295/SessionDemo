<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>About</title>
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
            font-size: 48px;
        }
        .hero h1 span {
            color: #a855f7;
        }
        .hero p {
            font-size: 14px;
            margin-top: -10px;
            color: #ccc;
        }
        .team-section {
            text-align: center;
            padding: 50px 20px;
        }
        .team-section h2 {
            font-size: 24px;
        }
        .team-image {
            max-width: 80%;
            border-radius: 10px;
            margin-top: 20px;
        }
        .leaders {
            text-align: center;
            margin-top: 50px;
            font-size: 20px;
            border-top: 1px solid #333;
            padding-top: 20px;
        }
        .leaders-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
        }
        .leader-card {
            width: 300px;
            text-align: center;
        }
        .leader-card img {
            width: 100%;
            border-radius: 20px;
        }
        .contact-section {
            text-align: center;
            padding: 30px 20px;
            border-top: 1px solid #333;
            margin-top: 20px;
        }
        .contact-section h2 {
            margin-bottom: 20px;
        }
        .contact-section p {
            margin: 5px 0;
            margin-bottom: 20px;
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
    
    <section class="hero">
        <h1>WHERE DREAMS <br> TRANS<span>FORM</span> <br> INTO CODE</h1>
        <p>We are committed to providing programs that go beyond top-tier training traditional education</p>
    </section>
    <section class="team-section">
        <h2>People who makes us a team</h2>
        <img src="Images/team.jpg" alt="Team" class="team-image">
    </section>
    <section class="leaders">
        <h2>OUR LEADERS</h2>
        <div class="leaders-container">
            <div class="leader-card">
                <img src="Images/rizupic.jpg" alt="Rizwan Ali">
                <p>Rizwan Ali</p>
                <p>FOUNDER & PARTNER</p>
            </div>
            <div class="leader-card">
                <img src="Images/yashpic.jpg" alt="Yash Jaiswal">
                <p>Yash Jaiswal</p>
                <p>FOUNDER & PARTNER</p>
            </div>
            <div class="leader-card">
                <img src="Images/sunilpic.jpg" alt="Sunil Kumar">
                <p>Sunil Kumar</p>
                <p>FOUNDER & PARTNER</p>
            </div>
        </div>
    </section>
    <section class="contact-section">
        <h2>CONTACT US</h2>
        <p><strong>PHONE:</strong> 8252641019 + 8252641019</p>
        <p><strong>EMAIL:</strong> Codehub123@gmail.com</p>
        <p><strong>ADDRESS:</strong>Bihar</p>
    </section>
    
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
