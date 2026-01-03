<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Ethical Hacking</title>

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
	position: absolute;
	top: 0;
	left: 0;
    position: fixed;
	
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

.nav-profile {
		    width: 40px;
		    height: 40px;
		    border-radius: 50%;
		}

.highlight {
	color: #b23acf;
}

.container {
	max-width: 100%;
	margin: auto;
	font-size: 40px;
}

.buttons {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 80px;
	margin-top: 70px;
	
}

.button {
	padding: 8px 24px;
	border: 2px solid #b23acf;
	border-radius: 40px;
	color: white;
	background: transparent;
	cursor: pointer;
	font-size: 25px;
	width: 250px; /* Ensuring uniform button size */
}

.button:hover {
	background: #b23acf;
}

.course-container {
	max-width: 80%;
	margin: 130px auto 50px auto;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: center;
	background: black;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(178, 58, 207, 0.5);
}

.left-section {
	width: 48%;
}

.right-section {
	text-align: left;
	margin-right: 110px;
}

.thumbnail {
	width: 100%;
	border-radius: 10px;
}

.price {
	font-size: 24px;
	font-weight: bold;
}

.discounted {
	text-decoration: line-through;
	color: gray;
	margin-left: 10px;
}

.buy-btn {
		    background: #b23acf;
		    padding: 8px 16px; /* Reduced padding */
		    border: none;
		    border-radius: 20px; /* Adjusted border-radius */
		    color: white;
		    font-size: 20px; /* Smaller font size */
		    cursor: pointer;
		    display: inline-block;
		    text-decoration: none;
		    margin-top: 10px;
		    margin-bottom: 10px;
		}
		 .buy-btn:hover {
            background: #8a2be2;
        }
.button-pair-container {
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
	gap: 20px;
	margin-top: 20px;
}

.button-pair {
	display: flex;
	gap: 20px;
}

.buttons2 {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 30px;
	margin-top: 20px;
}

.button2 {
	padding: 12px 24px;
	border: 2px solid #b23acf;
	border-radius: 30px;
	color: white;
	background: transparent;
	cursor: pointer;
	font-size: 25px;
	width: 250px; /* Ensuring uniform button size */
}

.button2:hover {
	background: #b23acf;
}

.line {
	width: 100%;
	height: 2px;
	background: #b23acf; /* Purple color */
	border: none;
	margin: 100px 0 40px 0;
}

.gradient-text {
	margin-top: 40px;
	font-size: 140px;
	font-weight: normal;
	background: linear-gradient(to bottom, #ee8fee, #90539f, #510e43, #2d0425);
	-webkit-background-clip: text;
	background-clip: text;
	color: transparent;
	display: inline-block;
}

.sub-text {
	font-size: 100px;
	font-weight: normal;
	background: linear-gradient(to bottom, #ee8fee, #90539f, #510e43, #2d0425);
	-webkit-background-clip: text;
	background-clip: text;
	color: transparent;
	display: inline-block;
}

.small-text {
	font-size: 50px;
	margin-top: 60px;
	background: linear-gradient(to bottom, #c9d3db, #93aac0, #5584b3, #2d6ba1);
	-webkit-background-clip: text;
	background-clip: text;
	color: transparent;
	display: inline-block;
}

.roadmap {
	margin-top: 40px;
}

.container2 {
	max-width: 100%;
	text-align: center;
	margin-top: 40px;
}

.title {
	font-size: 100px;
	font-weight: bold;
}

.subtitle {
	font-size: 64px;
	margin: 15px 0;
}

.highlight {
	color: purple;
	font-weight: bold;
}

.btn {
		    background-color: transparent;
		    color: white;
		    border: 2px solid purple;
		    padding: 12px 24px; /* Adjusted padding */
		    border-radius: 30px;
		    font-size: 22px;
		    cursor: pointer;
		    text-decoration: none;
		    display: inline-block;
		    margin-top: 40px; /* Added margin from the top */
		    margin-bottom: 80px; /* Added margin from the bottom */
		}
.btn:hover {
	background-color: purple;
	color: white;
}

.container3 {
    text-align: center;
    background-color: black;
    color: white;
    padding: 20px;
}

.title {
    font-size: 63px;
    font-weight: bold;
    margin-bottom: 15px; /* Space below title */
}

.subtitle1 {
    font-size: 20px;
    margin-top: 5px;
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

@media ( max-width : 768px) {
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

@media ( max-width : 480px) {
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

.box-content {
	width: 600px;
	height: 600px;
	background-color: #A60AA3;
	background: radial-gradient(circle, rgba(80, 0, 80, 1) 0%,
		rgba(0, 0, 0, 1) 70%);
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


	<div class="container">
		<h1>
			Online Ethical <span class="highlight">Hacking</span> Course:
		</h1>
		<br> <span>Learn the basics of ethical hacking and cyber
			security with the best online ethical hacker course in India. This
			training program is designed for beginners and covers core concepts,
			hacking methodologies, tools, techniques, and more.</span><br>
		<div class="buttons">
			<button class="button">Networking</button>
			<button class="button">Linux</button>
			<button class="button">Network Scanning</button>
		</div>
	</div>


	<div class="course-container">
		<div class="left-section">
			<img class="thumbnail" src="Images/Group 34.png" alt="Course Thumbnail">
			<div class="button-pair-container">
				<div class="button-pair">
					<button class="button">Language: Hindi</button>
				</div>
				<div class="button-pair">
					<button class="button2">Total Content: 200+ Hours</button>
				</div>
			</div>
		</div>
		<div class="right-section">
			<p class="price">
				Price <span class="highlight">₹7000</span> <span class="discounted">₹11999</span>
				(+ GST)
			</p>
			<p>Limited Time Discount Applied!</p>
		    <a href="Payment2.jsp" class="buy-btn">Buy Now</a>
		
			<p>
				Batch Starts on <span class="highlight">27th January</span>
			</p>
			</br> </br>
            <a href="https://www.youtube.com/watch?v=WBqwhJhB9Og" target="_blank" class="buy-btn">Learn Basics on Ethical Hacking</a>
		</div>
	</div>

	<hr class="line">


	<h1 class="gradient-text">Zero To Job-Ready</h1>
	<br>
	<h2 class="sub-text">in 5 months*</h2>
	<br>
	<h3 class="small-text">What you will learn</h3>


	<div class="roadmap">
		<img alt="" src="Images/Group 107.png">
	</div>


	<div class="container2">
		
		<h1 class="title">Syllabus</h1>
		<p class="subtitle">
			Dominate. From <span class="highlight">Start</span> to Victory.
		</p>
            <a href="Ethical_syllabus.jsp" class="btn">View Complete Syllabus</a><br><br>
	</div>
	
	<div class="container3">
		<h5 class="title">More value, Less Cost.</h5>
		<p class="subtitle1">Quality and value drive us, delivering more
			for less cost</p>
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