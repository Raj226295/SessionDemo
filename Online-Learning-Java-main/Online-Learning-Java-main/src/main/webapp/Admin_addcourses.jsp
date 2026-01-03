<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Course - Admin Panel</title>
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

        .form-container {
            background-color: #1e1e1e;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
            max-width: 500px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input, select, textarea {
            width: 100%;
            padding: 8px;
            background-color: #333;
            border: 1px solid #555;
            color: white;
        }

        .submit-btn {
            padding: 10px 20px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }
        
        .submit-btn:hover{
            transform: scale(1.05);
		    box-shadow: 0 4px 15px rgba(138, 43, 226, 0.4);
		    z-index: 1;
        }

        .image-preview {
            display: block;
            max-width: 100%;
            max-height: 200px;
            margin-top: 10px;
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
            <li><a href="Admin_instructors.jsp">Instructors</a></li>
            <li><a href="EnrollStudent.jsp">Enroll Student</a></li>
            <li><a href="Admin_logout.jsp">Logout</a></li>
        </ul>
    </aside>
    <main class="content">
        <header>
            <h1>Add New Course</h1>
        </header>
        <div class="form-container">
            <form action="AddCourseServlet" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="course-name">Course Name</label>
                    <input type="text" id="course-name" name="courseName" placeholder="Enter course name" required>
                </div>

                <div class="form-group">
                    <label for="instructor">Instructor</label>
                    <select id="instructor" name="instructorId" required>
                        <option value="">Select Instructor</option>
                        <% 
                            Connection conn = null;
                            PreparedStatement stmt = null;
                            ResultSet rs = null;
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");
                                String sql = "SELECT id, name FROM instructors";
                                stmt = conn.prepareStatement(sql);
                                rs = stmt.executeQuery();
                                while (rs.next()) { 
                        %>
                            <option value="<%= rs.getInt("id") %>"><%= rs.getString("name") %></option>
                        <% 
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            } finally {
                                if (rs != null) try { rs.close(); } catch (SQLException e) {}
                                if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
                                if (conn != null) try { conn.close(); } catch (SQLException e) {}
                            }
                        %>
                    </select>
                </div>

                <div class="form-group">
                    <label for="description">Course Description</label>
                    <textarea id="description" name="description" rows="4" placeholder="Enter course description" required></textarea>
                </div>
                
                <div class="form-group">
				    <label for="price">Course Price</label>
				    <input type="number" id="price" name="price" placeholder="Enter course price" required step="0.01" min="0">
				</div>

                <div class="form-group">
                    <label for="course-image">Course Image</label>
                    <input type="file" id="course-image" name="courseImage" accept="image/*" required 
                           onchange="previewImage(event)">
                    <img id="image-preview" class="image-preview" alt="Image Preview" />
                </div>

                <button type="submit" class="submit-btn">Add Course</button>
            </form>
        </div>
    </main>
</div>

<script>
    function previewImage(event) {
        const reader = new FileReader();
        reader.onload = function () {
            const img = document.getElementById('image-preview');
            img.src = reader.result;
        };
        reader.readAsDataURL(event.target.files[0]);
    }
</script>

</body>
</html>
