<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
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

    .cards {
        display: flex;
        gap: 20px;
        margin-top: 20px;
    }

    .card {
	    background-color: #1e1e1e;
	    padding: 20px;
	    border-radius: 8px;
	    width: 200px;
	    text-align: center;
	    font-size: 18px;
	    transition: transform 0.3s ease, box-shadow 0.3s ease;
	    cursor: pointer;
	}
	
	.card:hover {
	    transform: scale(1.05);
	    box-shadow: 0 4px 15px rgba(138, 43, 226, 0.4);
	    z-index: 1;
	}
	
		 

    </style>
</head>
<body>
   <%
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    int totalStudents = 0;
    int totalCourses = 0;
    int totalInstructors = 0; // Variable for instructors count

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

        // Query to count students
        String studentQuery = "SELECT COUNT(*) AS student_count FROM signup";
        ps = con.prepareStatement(studentQuery);
        rs = ps.executeQuery();
        if (rs.next()) {
            totalStudents = rs.getInt("student_count");
        }
        rs.close();
        ps.close();

        // Query to count courses
        String courseQuery = "SELECT COUNT(*) AS course_count FROM courses";
        ps = con.prepareStatement(courseQuery);
        rs = ps.executeQuery();
        if (rs.next()) {
            totalCourses = rs.getInt("course_count");
        }
        rs.close();
        ps.close();

        // Query to count instructors
        String instructorQuery = "SELECT COUNT(*) AS instructor_count FROM instructors";
        ps = con.prepareStatement(instructorQuery);
        rs = ps.executeQuery();
        if (rs.next()) {
            totalInstructors = rs.getInt("instructor_count");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (con != null) con.close();
    }
%>


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
                <h1>Dashboard</h1>
            </header>
            <section class="cards">
			    <div class="card">Total Students: <%= totalStudents %></div>
			    <div class="card">Total Courses: <%= totalCourses %></div>
			    <div class="card">Total Instructors: <%= totalInstructors %></div>
			</section>

        </main>
    </div>
</body>
</html>
