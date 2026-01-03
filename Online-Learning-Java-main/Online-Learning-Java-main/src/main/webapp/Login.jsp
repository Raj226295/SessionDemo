<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj != null && sessionObj.getAttribute("user") != null) {
        response.sendRedirect("Home2.jsp");
        return;
    }
%> --%> 
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
            padding-top: 80px;
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
            gap: 50px;
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
        .menu-toggle {
            display: none;
            flex-direction: column;
            cursor: pointer;
        }

        .menu-toggle span {
            background: white;
            width: 25px;
            height: 3px;
            margin: 4px 0;
            display: block;
        }

        .mobile-nav {
            display: none;
            flex-direction: column;
            background: #111;
            text-align: center;
            width: 100%;
            position: absolute;
            top: 60px;
            left: 0;
            padding: 10px 0;
        }

        .mobile-nav a {
            padding: 10px;
            display: block;
            border-bottom: 1px solid #222;
        }

        

        .login-container {
            background: rgba(24, 24, 24, 0.9);
            padding: 30px;
            width: 100%;
            max-width: 320px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(255, 0, 255, 0.3);
            text-align: center;
            backdrop-filter: blur(10px);
            animation: glow 1.5s infinite alternate;
        }

        @keyframes glow {
            0% { box-shadow: 0 0 10px rgba(255, 0, 255, 0.5); }
            100% { box-shadow: 0 0 20px rgba(255, 0, 255, 0.9); }
        }

        .login-container input {
            width: 100%;
            padding: 12px;
            border: none;
            outline: none;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            border-radius: 5px;
            font-size: 16px;
            margin-bottom: 15px;
            text-align: center;
        }

        .login-container input:focus {
            border: 2px solid #ff00ff;
            box-shadow: 0 0 15px #ff00ff;
        }

       

        .login-btn {
            width: 100%;
            padding: 8px 15px 8px 15px;
            border: none;
            background: linear-gradient(90deg, #ff00ff, #8a2be2);
            color: white;
            font-size: 18px;
            border-radius: 20px;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s ease-in-out;
            text-decoration: none;
         
        }
        

        .login-btn:hover {
            transform: scale(1.05);
            background: linear-gradient(90deg, #8a2be2, #ff00ff);
            box-shadow: 0 0 20px rgba(255, 0, 255, 0.5);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .nav-links, .auth-buttons {
                display: none;
            }

            .menu-toggle {
                display: flex;
            }

            
            .login-container {
                width: 90%;
            }

            .mobile-nav:checked + .menu-toggle + .nav-links {
                display: flex;
            }
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1 style="color: purple;">CodeHub</h1>
        <input type="checkbox" id="menu-toggle" class="mobile-nav" hidden>
        <label for="menu-toggle" class="menu-toggle">
            <span></span>
            <span></span>
            <span></span>
        </label>
        <div class="nav-links">
            <a href="Home.jsp">Home</a>
            <a href="courses.jsp">Course</a>
            <a href="About.jsp">About</a>
            <a href="Admin_login.jsp">Admin</a>
            
        </div>
        <div class="auth-buttons">
            <a href="Signup.jsp" class="login">Sign Up</a>
        </div>
    </div>

     
     <form action="Login" method="post">
        <div class="login-container">
            <input type="text" placeholder="Email Id" name="email" required>
            <input type="password" placeholder="Password" name="password" required>
            <button type="submit" class="login-btn">LOGIN</button>
            
        </div>
        </form>
    

</body>
</html>
