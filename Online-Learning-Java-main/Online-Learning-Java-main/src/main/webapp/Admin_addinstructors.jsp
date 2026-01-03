<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Instructor - Admin Panel</title>
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

        input, select {
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
                <h1>Add New Instructor</h1>
            </header>
            <div class="form-container">
                <form action="AddInstructorServlet" method="post">
				    <div class="form-group">
				        <label for="instructor-name">Instructor Name</label>
				        <input type="text" id="instructor-name" name="name" placeholder="Enter instructor name" required>
				    </div>
				    <div class="form-group">
				        <label for="email">Email</label>
				        <input type="email" id="email" name="email" placeholder="Enter instructor email" required>
				    </div>
				    
				    <button type="submit" class="submit-btn">Add Instructor</button>
				</form>

            </div>
        </main>
    </div>
</body>
</html>
