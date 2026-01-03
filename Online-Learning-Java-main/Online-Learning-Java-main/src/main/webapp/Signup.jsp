<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: black;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            padding-top: 80px; /* Avoid navbar overlap */
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 40px;
            background: #111;
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            box-shadow: 0 2px 10px rgba(255, 0, 255, 0.3);
            z-index: 1000;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 40px;
            margin-right: 600px;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            font-size: 18px;
        }

        .auth-buttons .login {
            background: purple;
            padding: 8px 20px;
            border-radius: 30px;
            color: white;
            font-size: 18px;
            transition: 0.3s ease-in-out;
        }

        .auth-buttons .login:hover {
            background: #8a2be2;
        }

        /* Responsive Navbar */
        #menu-toggle {
            display: none;
        }

        .menu-icon {
            display: none;
            font-size: 24px;
            cursor: pointer;
            color: white;
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
                flex-direction: column;
                position: absolute;
                top: 60px;
                left: 0;
                width: 100%;
                background: #222;
                text-align: center;
                padding: 20px 0;
            }

            .nav-links a {
                display: block;
                padding: 10px 0;
            }

            .menu-icon {
                display: block;
            }

            /* Show menu when checkbox is checked */
            #menu-toggle:checked ~ .nav-links {
                display: flex;
            }
        }
        
        
         @keyframes glow {
            0% { box-shadow: 0 0 10px rgba(255, 0, 255, 0.5); }
            100% { box-shadow: 0 0 20px rgba(255, 0, 255, 0.9); }
        }
        

        

        /* Signup Container */
        .signup-container {
            background: #121212;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(255, 0, 255, 0.5);
            text-align: center;
            width: 90%;
            max-width: 400px;
            animation: glow 1.5s infinite alternate;
            
        }

        .signup-container h2 {
            margin-bottom: 1rem;
        }

        .input-box {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background: #222;
            color: white;
            text-align: center;
        }
        
        .gender-select {
            width: 100%;
            padding: 12px;
            margin: 7px 0 10px 0 ;
            border: none;
            border-radius: 5px;
            background: #222;
            color: white;
            text-align: center;
        }
       

        .input-box:focus {
            border: 2px solid #ff00ff;
            box-shadow: 0 0 10px #ff00ff;
        }

        .signup-btn {
		    width: 100%;
		    padding: 12px;
		    border: none;
		    border-radius: 25px;
		    background: linear-gradient(90deg, #ff00ff, #9900ff);
		    color: white;
		    font-weight: bold;
		    cursor: pointer;
		    transition: 0.3s ease-in-out;
		    text-decoration: none;
		    margin-top: 10px; /* Added margin */
		}

        .signup-btn:hover {
            transform: scale(1.05);
            background: linear-gradient(90deg, #8a2be2, #ff00ff);
        }

        .signup-container p {
            margin-top: 10px;
            color: #bbb;
        }

        .signup-container a {
            text-decoration: none;
        }

        

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
                align-items: center;
            }

            

            .signup-container {
                width: 95%;
                padding: 25px;
            }

            .input-box {
                font-size: 16px;
            }

            .signup-btn {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <h1 style="color: purple;">CodeHub</h1>
        <input type="checkbox" id="menu-toggle">
        <label for="menu-toggle" class="menu-icon">☰</label>
        <div class="nav-links">
            <a href="Home.jsp">Home</a>
            <a href="courses.jsp">Course</a>
            <a href="About.jsp">About</a>
        </div>
       
    </div>

  
   <form action="Signup" method="post">
        <div class="signup-container">
            <h2>Sign Up</h2>
            <input type="text" class="input-box" name="username" placeholder="Username" required>
            <input type="email" class="input-box" name="email" placeholder="Email" required>
            <input type="password" class="input-box" name="password" placeholder="Password" style="margin-bottom: 20px;" required>
            <select class="gender-select" name="gender" required>
            <option value="" disabled selected>Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
            </select>
            <br><br>
             <button type="submit" class="signup-btn">SIGN UP</button>            
            <p>Already have an account? <a href="Login.jsp">Login</a></p>
        </div>
   </form>

</body>
</html>
