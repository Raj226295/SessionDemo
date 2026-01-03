<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Course</title>
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
        input, select, textarea {
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
        img {
            max-width: 100%;
            height: auto;
            margin-bottom: 15px;
            border-radius: 8px;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <h2>Edit Course</h2>

    <%
        int id = Integer.parseInt(request.getParameter("id"));
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        String courseName = "", description = "", courseImage = "";
        int instructorId = 0, studentsEnrolled = 0;
        double price = 0.0;
        String instructorName = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

            // Get course details including price
            String sql = "SELECT c.course_name, c.instructor_id, c.description, c.students_enrolled, c.course_image, c.course_price, i.name AS instructor_name " +
                         "FROM courses c " +
                         "JOIN instructors i ON c.instructor_id = i.id " +
                         "WHERE c.course_id=?";
            
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                courseName = rs.getString("course_name");
                instructorId = rs.getInt("instructor_id");
                instructorName = rs.getString("instructor_name");
                description = rs.getString("description");
                studentsEnrolled = rs.getInt("students_enrolled");
                courseImage = rs.getString("course_image");
                price = rs.getDouble("course_price");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    %>

    <form action="UpdateCourseServlet" method="post" enctype="multipart/form-data">
        <input type="hidden" name="course_id" value="<%= id %>">

        <label>Course Name:</label>
        <input type="text" name="course_name" value="<%= courseName %>" required>

        <label>Instructor:</label>
        <select name="instructor_id" required>
            <%
                // Fetch all instructors for the dropdown
                Connection conn2 = null;
                PreparedStatement stmt2 = null;
                ResultSet rs2 = null;
                
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");
                    
                    String instructorsSQL = "SELECT id, name FROM instructors";
                    stmt2 = conn2.prepareStatement(instructorsSQL);
                    rs2 = stmt2.executeQuery();
                    
                    while (rs2.next()) {
                        int currentInstructorId = rs2.getInt("id");
                        String currentInstructorName = rs2.getString("name");
            %>
                        <option value="<%= currentInstructorId %>" 
                                <%= (currentInstructorId == instructorId) ? "selected" : "" %>>
                            <%= currentInstructorName %>
                        </option>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs2 != null) rs2.close();
                    if (stmt2 != null) stmt2.close();
                    if (conn2 != null) conn2.close();
                }
            %>
        </select>

        <label>Description:</label>
        <textarea name="description" required><%= description %></textarea>

        <label>Students Enrolled:</label>
        <input type="number" name="students_enrolled" value="<%= studentsEnrolled %>" required>

        <label>Price:</label>
        <input type="number" step="0.01" name="course_price" value="<%= price %>" required>

        <label>Current Image:</label>
        <img src="<%= request.getContextPath() %>/<%= courseImage != null && !courseImage.isEmpty() ? courseImage : "images/default-course.png" %>" 
             alt="Course Image">

        <label>Upload New Image:</label>
        <input type="file" name="course_image" accept="image/*">

        <div class="btn-container">
            <button type="submit" class="update-btn">Update Course</button>
            <a href="Admin_courses.jsp"><button type="button" class="back-btn">Back</button></a>
        </div>
    </form>
</body>
</html>
