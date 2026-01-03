<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registeration</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<h2>User Registeration Form</h2>
<!--  Display message if any -->

<%
  String msg =request.getParameter("msg");
if(msg != null){
%>
   <h3 style="color:green;"><%= msg %></h3>	
   <%
   
   
}
%>
<form action="RegisterServlet" method="post">

Name:
<input type="text" name="name" required>
<br><br>

Address:
<textarea name="address" required></textarea>
<br><br>

Age:
<input type="text" name="age" required></input>
<br><br>


 Gender:  
    <input type="radio" name="gender" value="Male" required> Male
    <input type="radio" name="gender" value="Female"> Female
    <br><br>

    City:  
    <select name="city" required>
        <option value="">Select</option>
        <option>Delhi</option>
        <option>Mumbai</option>
        <option>Pune</option>
        <option>Bhopal</option>
    </select>
    <br><br>


  <input type="submit" value="Register">

</form>
</body>
</html>