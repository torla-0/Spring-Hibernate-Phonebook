<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

	<title>Phone Book</title>
</head>
<body class="body_class">
		
		<div class="main_container">
			<div class="header">
				Welcome !!! This is phone book prototype
			</div>
			
			<div class="main">
				<div class="main__toolbar">
					<p><a href="${pageContext.request.contextPath}/phone/list">Show All</a></p>
					<p class="main__toolbar__add-btn"><a href="${pageContext.request.contextPath}/phone/add">Add</a></p>
					
				</div>
							
				<div class="add-main">
		    <form:form method="POST" modelAttribute="user" action="deleteUser">
		    <form:hidden path="id" />
		        <table class="add-main__table">
		        
		        	<tr>
		        		<td><label class="add-main__label">First Name:</label></td>
		        		<td><form:input path="firstName" class="add-main__input" readonly="true" /></td>

		        	</tr>
		        	
		        	<tr>
		        		<td><label  class="add-main__label">Last Name:</label></td>
		        		<td><form:input path="lastName" class="add-main__input" readonly="true" /></td>

		        	</tr>
		        	
		        	<tr>
		        		<td><label class="add-main__label">Phone number:</label></td>
		        		<td><form:input path="number" class="add-main__input" readonly="true" /></td>

		        	</tr>
		        	
		        	<tr>
		        		<td class="delete"><a class="delete__btn" href="${pageContext.request.contextPath}/phone.list">No</a>
		        		<input type="submit" value="Yes" class="delete__btn" /></td>
		        	</tr>
		        
		        </table>
		  </form:form>
      			</div>
				
      			
			</div>
		</div>
		

	</body>
</html>