<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <link rel="stylesheet" href="style.css">
   
</head>
<body>

<h2 align="center">User Registration</h2>

<form action="RegisterServlet" method="post">
    Name:
    <input type="text" name="name" />

    Address:
    <input type="text" name="address" />

    Age:
    <input type="number" name="age" />

    Gender:
    <select name="gender">
        <option value="">--Select--</option>
        <option>Male</option>
        <option>Female</option>
    </select>

    City:
    <input type="text" name="city" />

    <input type="submit" value="Register" />
</form>

</body>
</html>
