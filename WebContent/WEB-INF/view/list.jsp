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
				
				<div class="table-div">
					<table class="main__table">
						<tr>
							<td class="main__table__data padding-bottom-1">Last name</td>
							<td class="main__table__data padding-bottom-1">First name</td>
							<td class="main__table__data padding-bottom-1">Phone number</td>
						</tr>
						
						
						<!-- get users from database and display it -->
						<c:forEach var="i" items="${users}" >
						
						<c:url var="updateLink" value="/phone/update">
							<c:param name="userId" value="${i.id}"/>
						</c:url>
						
						<c:url var="deleteLink" value="/phone/delete">
							<c:param name="userId" value="${i.id}"/>
						</c:url>
						
							<tr>
								<td>${i.lastName}</td>
								<td>${i.firstName}</td>
								<td>${i.number}</td>
								<td><a href="${updateLink}">Update</a>
								|
								<a href="${deleteLink}" style="color:orangered">Delete</td>
							</tr>
						
						</c:forEach>
						
					</table>
				</div>
				
				
				<!-- next page link -->
				<c:url var="nextLink" value="/phone/list">
					<c:param name="page" value="${page + 1}" />
				</c:url>
				<!-- previous page link -->
				<c:url var="backLink" value="/phone/list">
					<c:param name="page" value="${page <= 1 ? 1 : page - 1}" />
				</c:url>
				
				
				
				<div class="pagination-div">

			        <button class="btn"><a href="${backLink}">Previous</a></button>
			        <button class="btn"><a href="${nextLink}">Next</a></button>
      			</div>
      			
			</div>
		</div>
		
	</body>
</html>