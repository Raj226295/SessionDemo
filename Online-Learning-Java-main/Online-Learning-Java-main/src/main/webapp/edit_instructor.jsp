<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Instructor</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: white;
            padding: 20px;
            text-align: center;
        }
        form {
            background: #1e1e1e;
            padding: 20px;
            border-radius: 8px;
            width: 50%;
            margin: auto;
            text-align: left;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background: #333;
            color: white;
            border: none;
        }
        button {
            padding: 10px 20px;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 10px;
        }
        .update-btn {
            background: #007bff;
        }
        .back-btn {
            background: #dc3545;
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <h2>Edit Instructor</h2>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String name = "", email = "";
        int coursesAssigned = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");
            String sql = "SELECT * FROM instructors WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                name = rs.getString("name");
                email = rs.getString("email");
                coursesAssigned = rs.getInt("coursesAssigned");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    %>
    <form action="UpdateInstructorServlet" method="post">
        <input type="hidden" name="id" value="<%= id %>">
        <label>Name:</label>
        <input type="text" name="name" value="<%= name %>" required>
        
        <label>Email:</label>
        <input type="email" name="email" value="<%= email %>" required>

        <label>Courses Assigned:</label>
        <input type="number" name="coursesAssigned" value="<%= coursesAssigned %>" required>

        <div class="btn-container">
            <button type="submit" class="update-btn">Update Instructor</button>
            <a href="Admin_instructors.jsp"><button type="button" class="back-btn">Back</button></a>
        </div>
    </form>
</body>
</html>
