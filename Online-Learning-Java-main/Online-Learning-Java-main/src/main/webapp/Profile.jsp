<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <style>
 /* General Reset */
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
        .nav-links {
            display: flex;
            align-items: center;
            gap: 40px;
            margin-right: 300px;
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
       

/* Account Center Layout */
.account-container {
    display: flex;
    max-width: 900px;
    margin: 150px auto 100px auto;
    border: 1px solid #4b0082;
    padding: 20px;
    background-color: black;
    border-radius: 10px;
}

/* Sidebar */
.sidebar {
    flex: 1;
    padding: 20px;
    border-right: 1px solid #4b0082;
    margin-top: 80px;
    margin-right: 50px;
}

.sidebar a {
    display: block;
    color: white;
    text-decoration: none;
    margin-bottom: 15px;
    font-size: 18px;
    text-align: left;
}

/* Account Details */
.account-details {
    flex: 3;
    padding: 20px;
}

.profile-section {
    display: flex;
    align-items: center;
    gap: 15px;
    margin-bottom: 20px;
}

.profile-section img {
    width: 80px;
    height: 80px;
    border-radius: 50%;
}

.user-info h3 {
    margin: 0;
    font-size: 22px;
}

.user-info p {
    margin: 5px 0;
    font-size: 16px;
}

/* Form Styling */
.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-size: 16px;
}

.form-group input {
    width: 100%;
    padding: 10px;
    background: black;
    border: 1px solid #8a2be2;
    color: white;
    font-size: 16px;
    border-radius: 5px;
}

/* Logout Button */
.logout-btn {
    background-color: #8a2be2;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 20px;
    cursor: pointer;
    margin-top: 10px;
    display: block;
    margin-left: 180px;
    text-align: center;
    text-decoration: none;
}

.logout-btn:hover {
    background-color: #6a1bbd;
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

<%
    // Retrieve user details from session
    String username = (String) session.getAttribute("username");
    String email = (String) session.getAttribute("email");
    String password = (String) session.getAttribute("password");

    if (username == null || email == null || password == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

   
   <div class="navbar">
        <h1>CodeHub</h1>
        <input type="checkbox" id="menu-toggle">
        <label for="menu-toggle" class="menu-icon">☰</label>
        <div class="nav-links">
            <a href="Home2.jsp">Home</a>
            <a href="courses2.jsp">Course</a>
            <a href="About2.jsp">About</a>
        </div>
        <img src="Images/profile.png" alt="Profile" class="nav-profile">
    </div>
   
   <div class="box">
      <div class="box-content"></div>
    </div>
   

    <div class="account-container">
        <h2>Account Center</h2>
        <div class="sidebar">
            <a href="#">Personal Details</a>
            <a href="#">Enrolled Courses</a>
        </div>
        <div class="account-details">
            <div class="profile-section">
                <div class="user-info">
                    <h1>Profile</h1>
                  
                </div>
            </div>
            <div class="form-group">
                <label>Full name</label>
                <p><%= username %></p>
            </div>
            <div class="form-group">
                <label>Email</label>
                <p><%= email %></p>
            </div>
            <div class="form-group">
                <label>Password</label>
                <p><%= password %></p>
            </div>
            <a href="UpdateProfile.jsp" class="logout-btn" style="margin-top: 10px;">Update Profile</a>
            <a href="ProfileLogout.jsp" class="logout-btn">Logout</a>
            
            
        </div>
    </div>
</body>
</html>

</body>
</html>
    