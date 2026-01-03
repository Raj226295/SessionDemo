<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #1e1e1e;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
            width: 350px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #ffffff;
        }

        input, select, button {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: none;
            font-size: 16px;
        }

        input, select {
            background-color: #2a2a2a;
            color: #ffffff;
        }

        button {
            background-color: #007bff;
            color: white;
            cursor: pointer;
            transition: background 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        a {
            color: #007bff;
            text-decoration: none;
            display: block;
            margin-top: 10px;
        }

        a:hover {
            text-decoration: underline;
        }
        
        
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Student</h2>
        <%
            int studentId = Integer.parseInt(request.getParameter("id"));
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

                String query = "SELECT * FROM signup WHERE id=?";
                ps = con.prepareStatement(query);
                ps.setInt(1, studentId);
                rs = ps.executeQuery();

                if (rs.next()) {
        %>
        <form action="UpdateStudentServlet" method="post">
            <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
            <input type="text" name="username" value="<%= rs.getString("username") %>" required placeholder="Enter Name">
            <input type="email" name="email" value="<%= rs.getString("email") %>" required placeholder="Enter Email">
            <select name="gender">
                <option value="Male" <%= rs.getString("gender").equals("Male") ? "selected" : "" %>>Male</option>
                <option value="Female" <%= rs.getString("gender").equals("Female") ? "selected" : "" %>>Female</option>
            </select>
            <button type="submit">Update</button>
        </form>
        <a href="Admin_student.jsp">Back to Students</a>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            }
        %>
    </div>
</body>
</html>
