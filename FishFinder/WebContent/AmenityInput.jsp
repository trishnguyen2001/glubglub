<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.IOException" %>	
	<%@ page import="java.sql.*" %>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AmenityInput</title>
</head>
<body>
	<form action="AmenityOutput.jsp">
	Zone:  <input type="text" name="amenity_zone">
	Type:  <input type="text" name="amenity_type">
	Name:  <input type="text" name="amenity_name">
	Description:  <input type="text" name="amenity_description">
	<input type="submit" value="Submit">
	
	</form>
	 
	
</body>
</html>