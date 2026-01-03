<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ethical Hacking Syllabus</title>

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
        <h1>Online Ethical <span class="gradient-text">Hacking</span> Courses</h1>
    </div>
    
     <hr class="line">
     
     
     
     <div class="container">
        <div class="section">
            <h2>Networking</h2>
            <div class="content">
                <div>
                    <ul>
                <li>Introduction to networking</li>
                <li>Networking concepts</li>
                <li>Networking protocols</li>
                <li>Types of Networking</li>
                <li>What is TCP and how does it work?</li>
                <li>Network Protocols</li>
                <li>How does internet work?</li>
                <li>OSI vs TCP/IP model</li>
                <li>Domain name and DNS records</li>
            </ul>
                </div>
                <div>
                   <ul>
                <li>Role of networking ports</li>
                <li>Networking protocols</li>
                <li>What is TCP and how does it work?</li>
                <li>Network Protocols</li>
                <li>How does internet work?</li>
                <li>OSI vs TCP/IP model</li>
                <li>Domain name and DNS records</li>
            </ul>
                </div>
            </div>
        </div>

        <div class="section">
            <h2>Linux</h2>
            <div class="content">
                <div>
                    <ul>
                <li>What is Linux?</li>
                <li>Basic Linux commands (Practical)</li>
                <li>Cool Features of Linux</li>
                <li>Advance Linux commands (Practical)</li>
                <li>Basic File System of Linux</li>
                <li>Getting Familiar with Linux OS</li>
            </ul>
                </div>
                
            </div>
        </div>

        <div class="section">
            <h2>Setting Up Ethical Hacking Lab</h2>
            <div class="content">
                <div>
                    <ul>
                <li>Setting Up Lab</li>
                <li>Installing Kali or Parrot OS in VMware or VirtualBox</li>
                <li>Install VMware or Virtual Box</li>
                <li>Downloading a good wordlist for Kali Linux</li>
            </ul>
                </div>
            </div>
        </div>
        
         <div class="section">
            <h2>Footprinting And Reconnaissance</h2>
            <div class="content">
                <div>
                   <ul>
                <li>Introduction to Footprinting & Reconnaissance</li>
                <li>Types of Footprinting</li>
                <li>Website footprinting using Netcraft, Wappalyzer, 3rd party sources</li>
                <li>DNS footprinting using DNSenum, DNS lookup, MX lookup, NS lookup</li>
                <li>Email footprinting using Email Tracker Pro</li>
                <li>Entities of information gathering</li>
                <li>Source of information gathering</li>
                <li>WHOIS footprinting</li>
                <li>Performing information gathering using search engines</li>
                <li>Footprinting through OSINT framework</li>
                <li>Information gathering using Google Dorking and ASO</li>
                <li>Footprinting using Kali Linux</li>
                <li>DNSenum, DNSRecon, Sublist3r tools for footprinting</li>
            </ul>
                </div>
                
            </div>
        </div>

        <div class="section">
            <h2>Network Scanning</h2>
            <div class="content">
                <div>
                    <ul>
                <li>What is network scanning?</li>
                <li>Checking for software with versions</li>
                <li>Network scanning methodology</li>
                <li>OS fingerprinting and banner grabbing countermeasures</li>
                <li>Types of network scans</li>
                <li>Saving XML report for Metasploit & Conversion</li>
                <li>Checking for live systems and Buffer size</li>
                <li>Checking for open ports</li>
                <li>Checking for services on ports</li>
            </ul>
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