<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: 'Poppins', sans-serif;
            padding: 60px;
        }

        .update-container {
            max-width: 500px;
            margin: auto;
            padding: 30px;
            border: 1px solid #8a2be2;
            border-radius: 10px;
            background-color: #111;
        }

        h2 {
            text-align: center;
            color: #d4bfff;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-size: 16px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #8a2be2;
            background-color: black;
            color: white;
            border-radius: 5px;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #8a2be2;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            margin-top: 20px;
        }

        .btn:hover {
            background-color: #6a1bbd;
        }
        
        .box-content{
		      width: 1000px;
		      height: 1000px;
		      background-color: #A60AA3;
		      background: radial-gradient(circle, rgba(80,0,80,1) 0%, rgba(0,0,0,1) 70%);
		      position: absolute;
		      left: 17%;
		      bottom: 5%;
		      z-index: -1; 
		}
        
    </style>
</head>
<body>

<%
    String username = (String) session.getAttribute("username");
    String email = (String) session.getAttribute("email");
    String password = (String) session.getAttribute("password");

    if (username == null || email == null || password == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<div class="update-container">

    <div class="box">
      <div class="box-content"></div>
    </div>
    
    <h2>Update Profile</h2>
    <form action="UpdateProfileServlet" method="post">
        <div class="form-group">
            <label for="username">Full Name</label>
            <input type="text" id="username" name="username" value="<%= username %>" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= email %>" required readonly>
        </div>

        <div class="form-group">
            <label for="currentPassword">Current Password</label>
            <input type="text" id="currentPassword" value="<%= password %>" disabled>
        </div>

        <div class="form-group">
		    <label for="password">New Password <span style="font-weight: normal;">(leave blank to keep current)</span></label>
		    <input type="text" id="password" name="password" placeholder="Enter new password">
		</div>

        <div style="display: flex; justify-content: space-between; gap: 10px; margin-top: 20px;">
		    <button type="button" class="btn" onclick="window.location.href='Profile.jsp'">Back</button>
		    <button type="submit" class="btn">Save Changes</button>
		</div>

        
    </form>
</div>

</body>
</html>
