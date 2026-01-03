<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instructors - Admin Panel</title>
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

        .instructors-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .instructors-table th, .instructors-table td {
            border: 1px solid #ffffff;
            padding: 10px;
            text-align: left;
        }

        .instructors-table th {
            background-color: #1e1e1e;
        }

        .add-instructor {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }
        .add-instructor:hover{
            transform: scale(1.05);
		    box-shadow: 0 4px 15px rgba(138, 43, 226, 0.4);
		    z-index: 1;
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
                <li><a href="Admin_student.jsp">Students</a></li>
                <li><a href="Admin_instructors.jsp" style="background-color: #333;">Instructors</a></li>
                <li><a href="EnrollStudent.jsp">Enroll Student</a></li>
                <li><a href="Admin_logout.jsp">Logout</a></li>
                
            </ul>
        </aside>
        <main class="content">
            <header>
                <h1>Instructors</h1>
            </header>
            <a href="Admin_addinstructors.jsp"><button class="add-instructor">Add New Instructor</button></a>
            <table class="instructors-table">
                <thead>
                    <tr>
                        <th>Instructor ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Actions</th>
                    </tr>
                </thead>
				<tbody>
				    <% 
				        try {
				            Class.forName("com.mysql.jdbc.Driver");
				            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");
				            String sql = "SELECT * FROM instructors";
				            PreparedStatement stmt = conn.prepareStatement(sql);
				            ResultSet rs = stmt.executeQuery();
				
				            while (rs.next()) {
				    %>
				                <tr>
				                    <td><%= rs.getInt("id") %></td>
				                    <td><%= rs.getString("name") %></td>
				                    <td><%= rs.getString("email") %></td>
									<td>
									    <a href="edit_instructor.jsp?id=<%= rs.getInt("id") %>">
									        <button class="edit-button">Edit</button>
									    </a>
									    <a href="DeleteInstructor?id=<%= rs.getInt("id") %>">
									        <button onclick="return confirm('Are you sure?')" class="delete-button">Delete</button>
									    </a>
									</td>
				                </tr>
				    <%
				            }
				            conn.close();
				        } catch (Exception e) {
				            e.printStackTrace();
				        }
				    %>
				</tbody>

            </table>
        </main>
    </div>
</body>
</html>