<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Servlet Demo</title>
</head>
<body>
    <h2>Servlet Method Demo</h2>
    <a href="WelcomeServlet">Call doGet()</a>
    <br><br>
    <form action="WelcomeServlet" method="post">
        <input type="submit" value="Call doPost()">
    </form>
</body>
</html>
