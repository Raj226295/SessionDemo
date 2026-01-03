<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students - Admin Panel</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
        }

        .admin-container {
            display: flex;
        }

        .sidebar {
            width: 250px;
            background-color: #1e1e1e;
            padding: 20px;
            height: 100vh;
        }

        .sidebar h2 {
		    text-align: center;
		    font-size: 24px;
		    color: #d4bfff;
		    text-shadow: 
		        0 0 5px #8a2be2,
		        0 0 10px #8a2be2,
		        0 0 20px #8a2be2;
		}


        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 10px;
        }

        .sidebar ul li a {
            color: #ffffff;
            text-decoration: none;
            display: block;
        }

        .sidebar ul li a:hover {
            transform: scale(1.05);
		    box-shadow: 0 4px 15px rgba(138, 43, 226, 0.4);
		    z-index: 1;
            padding: 10px;
        }

        .content {
            flex-grow: 1;
            padding: 20px;
        }

        header h1 {
            margin: 0;
            color: #d4bfff;
		    text-shadow: 
		        0 0 5px #8a2be2,
		        0 0 10px #8a2be2,
		        0 0 20px #8a2be2;
        }

        .students-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .students-table th, .students-table td {
            border: 1px solid #ffffff;
            padding: 10px;
            text-align: left;
        }

        .students-table th {
            background-color: #1e1e1e;
        }

        
        
         .edit-button, .delete-button {
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            color: white;
        }

        .edit-button {
            background-color: #007bff;
        }

        .delete-button {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
    <div class="admin-container">
        <aside class="sidebar">
            <h2>Admin Panel</h2>
            <ul>
                <li><a href="Admin.jsp">Dashboard</a></li>
                <li><a href="Admin_courses.jsp">Courses</a></li>
                <li><a href="Admin_student.jsp" style="background-color: #333;">Students</a></li>
                <li><a href="Admin_instructors.jsp">Instructors</a></li>
                <li><a href="EnrollStudent.jsp">Enroll Student</a></li>
                <li><a href="Admin_logout.jsp">Logout</a></li>
            </ul>
        </aside>
        <main class="content">
            <header>
                <h1>Students</h1>
            </header>
            
            <table class="students-table">
                <thead>
                    <tr>
                        <th>Student ID</th>
                        <th>Student Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection con = null;
                        PreparedStatement ps = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");
                            String query = "SELECT * FROM signup"; // Use correct table name
                            ps = con.prepareStatement(query);
                            rs = ps.executeQuery();

                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("id") %></td>                    
                        <td><%= rs.getString("username") %></td>
                        <td><%= rs.getString("gender") %></td>                        
                        <td><%= rs.getString("email") %></td>
                        <td><%= rs.getString("password") %></td> 
                        <td>
						    <a href="UpdateStudent.jsp?id=<%= rs.getInt("id") %>">
						        <button class="edit-button">Edit</button>
						    </a>
						    <a href="DeleteStudent?id=<%= rs.getInt("id") %>" onclick="return confirm('Are you sure?');">
						        <button class="delete-button">Delete</button>
						    </a>
						</td>


                    </tr>
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
                </tbody>
            </table>
        </main>
    </div>
</body>
</html>
