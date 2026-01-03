<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses - Admin Panel</title>
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

        .courses-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .courses-table th, .courses-table td {
            border: 1px solid #ffffff;
            padding: 10px;
            text-align: left;
        }

        .courses-table th {
            background-color: #1e1e1e;
        }

        .add-course {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }
        .add-course:hover{
            transform: scale(1.05);
		    box-shadow: 0 4px 15px rgba(138, 43, 226, 0.4);
		    z-index: 1;
        }

        .action-buttons {
            display: flex;
            gap: 5px;
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
                <li><a href="Admin_courses.jsp" style="background-color: #333;">Courses</a></li>
                <li><a href="Admin_student.jsp">Students</a></li>
                <li><a href="Admin_instructors.jsp">Instructors</a></li>
                <li><a href="EnrollStudent.jsp">Enroll Student</a></li>
                <li><a href="Admin_logout.jsp">Logout</a></li>
            </ul>
        </aside>
        <main class="content">
            <header>
                <h1>Courses</h1>
            </header>
            <a href="Admin_addcourses.jsp"><button class="add-course">Add New Course</button></a>
            
            <table class="courses-table">
                <thead>
                    <tr>
                        <th>Course ID</th>
                        <th>Image</th>
                        <th>Course Name</th>
                        <th>Instructor</th>
                        <th>Description</th>
                        <th>Price</th> <!-- Added Price Column -->
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        Connection conn = null;
                        PreparedStatement stmt = null;
                        ResultSet rs = null;
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

                            // Updated SQL query to include course_price
                            String sql = "SELECT c.course_id, c.course_name, c.course_image, i.name AS instructor, c.description, c.course_price " +
                                         "FROM courses c " +
                                         "JOIN instructors i ON c.instructor_id = i.id";

                            stmt = conn.prepareStatement(sql);
                            rs = stmt.executeQuery();

                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("course_id") %></td>
                        <td>
                            <% String imageUrl = rs.getString("course_image"); %>
                            <img src="<%= imageUrl != null ? imageUrl : "images/default-course.png" %>" 
                                 alt="Course Image" 
                                 style="width: 100px; height: auto; border-radius: 8px; object-fit: cover;">
                        </td>
                        <td><%= rs.getString("course_name") %></td>
                        <td><%= rs.getString("instructor") %></td>
                        <td><%= rs.getString("description") %></td>
                        <td>Rs.<%= String.format("%.2f", rs.getDouble("course_price")) %></td> <!-- Display Price -->
                        <td>
                            <div class="action-buttons">
                                <a href="edit_course.jsp?id=<%= rs.getInt("course_id") %>">
                                    <button class="edit-button">Edit</button>
                                </a>
                                <a href="delete_course.jsp?id=<%= rs.getInt("course_id") %>" onclick="return confirm('Are you sure?');">
                                    <button class="delete-button">Delete</button>
                                </a>
                            </div>
                        </td>
                    </tr>
                    <% 
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (conn != null) conn.close();
                        }
                    %>
                </tbody>
            </table>
        </main>
    </div>
</body>
</html>
