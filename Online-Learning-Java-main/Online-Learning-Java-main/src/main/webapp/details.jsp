<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enter Your Details</title>
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
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
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
            margin-right: 100px;
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

        .form-container {
            background: #181818;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px purple;
            width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: purple;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: none;
            border-radius: 5px;
            background: #333;
            color: white;
        }

        .submit-btn {
            width: 100%;
            background: purple;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        .submit-btn:hover {
            background: #a020f0;
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

        .box-content {
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
    // Session-based data
    String username = (String) session.getAttribute("username");
    String email = (String) session.getAttribute("email");

    if (username == null || email == null) {
        response.sendRedirect("details.jsp");
        return;
    }

    // DB variables
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

        String sql = "SELECT course_name FROM courses";
        stmt = conn.prepareStatement(sql);
        rs = stmt.executeQuery();
%>

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

    <div class="form-container">
        <h2>Enter Your Details</h2>
        <form method="post" action="UserDetailServlet">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" value="<%= username %>" readonly required>

            <label for="email">Login Email</label>
            <input type="email" name="email" id="email" value="<%= email %>" readonly required>

            <label for="phone">Phone Number</label>
            <input type="tel" name="phone" id="phone" required>

            <label for="course">Select Course</label>
            <select name="course" id="course" required>
                <option value="" disabled selected>Select a course</option>
                <%
                    while (rs.next()) {
                        String courseName = rs.getString("course_name");
                %>
                <option value="<%= courseName %>"><%= courseName %></option>
                <%
                    }
                %>
            </select>

            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
%>

</body>
</html>
