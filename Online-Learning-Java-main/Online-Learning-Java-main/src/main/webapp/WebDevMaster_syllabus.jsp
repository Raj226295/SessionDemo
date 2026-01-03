<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Development Master Syllabus</title>

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
		    max-width: 100%;
		    display: flex;
		    flex-direction: column;
		    align-items: center;
		    justify-content: center;
		    margin-top: 50px; /* Adjust this value as needed */
		}
		
		h1 {
		    font-size: 100px;
		    font-weight: 500;
		}
		
		.gradient-text {
		    background: linear-gradient(90deg, #ff00ff, #9900ff);
		    -webkit-background-clip: text;
		    -webkit-text-fill-color: transparent;
		}
		
		p {
		    
		    margin-top: 10px;
		    color: #bbb;
		}
		
		
		.line {
            width: 100%;
            height: 2px;
            background: #b23acf; /* Purple color */
            border: none;
            margin: 100px 0 40px 0;
        }
        
        
        .container {
		    width: 85%;
		    margin: 100px auto;
		}
		
		.section {
		    background: #1e1e1e;
		    padding: 20px;
		    border-radius: 20px;
		    margin-bottom: 20px;
		    margin-top: 50px;
		}
		
		h2 {
		    margin: 0 0 10px 0;
		}
		
		.content {
		    margin-top: 40px;
		    display: flex;
		    justify-content: space-between;
		    text-align: left;
		    margin-left:50px;
		}
		
		.content div {
		    width: 85%;
		}
		
		p {
		    margin: 5px 0;
		    font-size: 30px;
		    padding-top:10px;
		}
		ul {
		    list-style-type: disc;
		    padding-left: 120px;
		    margin:10px;
		    font-size: 25px;
		}
		
		      
        
        
        
        .footer {
		    display: flex;
		    flex-direction: row; /* Ensures left-to-right layout */
		    justify-content: space-between;
		    align-items: center;
		    padding: 80px 60px;
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
		
		   
		}

		@media (max-width: 480px) {
		    .navbar h1 {
		        font-size: 20px;
		    }
		
		    .navbar a {
		        font-size: 14px;
		    }
		
		}
        
        .box-content{
		      width: 600px;
		      height: 600px;
		      background-color: #A60AA3;
		      background: radial-gradient(circle, rgba(80,0,80,1) 0%, rgba(0,0,0,1) 70%);
		      position: absolute;
		      left: 30%;
		      bottom: 45%;
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
    
    
    <div class="hero">
        <h1>Web Development <span class="gradient-text">Master</span><br>Course @dot 1.0 Batch</h1>
    </div>
    
     <hr class="line">
     
     
     
     <div class="container">
        <div class="section">
            <h2>HTML Basics</h2>
            <div class="content">
                <div>
                  <p>Setting up tools, Introduction to Web Development, Basics of HTML</p>
			        <p>Understanding and Handling Forms and Input</p>
			        <p>Selectors and Introduction to Styling, Different types of CSS</p>
		        </div>
                
            </div>
        </div>

        <div class="section">
            <h2>CSS Basics</h2>
            <div class="content">
                <div>
                   <p>Selectors, Box Model, Styling Fonts and Images</p>
                   <p>Learn About Height-Width</p>
                </div>
                
            </div>
        </div>

        <div class="section">
            <h2>Flex Box and Grid</h2>
            <div class="content">
                <div>
                            <p>CSS Flexbox, Responsiveness, Grid Container</p>
                            <p>Minor Project based on HTML and CSS</p>
                </div>
            </div>
        </div>
        
         <div class="section">
            <h2>Animation and Responsiveness</h2>
            <div class="content">
                <div>
				   <p>Animation and keyframes, Transition, Shorthand Animation</p>
				        <p>Media Query, Responsive Design of Text and Images</p>
				        <p>Responsive Mini Project</p>  
               </div>
                
            </div>
        </div>

        <div class="section">
            <h2>Tailwind Project</h2>
            <div class="content">
                <div>
                    <p>A Mini Project with Tailwind</p>
                </div>
                
            </div>
        </div>
        
        
        <div class="section">
            <h2>JavaScript Basics</h2>
            <div class="content">
                <div>
                   <p>Introduction to JS, Variable, Datatypes, Operator Precedence</p>
			        <p>Control Statements if else, loops, Switch Case, Array and Strings</p>
			        <p>Scope Chaining, this keyword, Functions, Callback, Arrow Functions</p>
			        <p>Fill, Filter, Map, Slice, Splice</p>
                </div>
                
            </div>
        </div>
        
         <div class="section">
            <h2>DOM Manipulation and Modern JS</h2>
            <div class="content">
                <div>
                   <p>DOM, BOM, Window Object, Mini Project</p>
			        <p>Async-Await, Event Loop, Event Listeners</p>
			        <p>Classes and Exports, Getters and Setters, Promises, Fetch</p>
                </div>
                
            </div>
        </div>
        
         <div class="section">
            <h2>JS Mini Project</h2>
            <div class="content">
                <div>
                         <p>Mini Project with HTML, CSS and JS</p>
                 
                </div>
                
            </div>
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