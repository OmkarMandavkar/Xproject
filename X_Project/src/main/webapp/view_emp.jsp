<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Login"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW EMPLOYEE DATA</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">NAME</th>
					<th scope="col">DEPT</th>
					<th scope="col">SALARY</th>
					<th scope="col">JOIN DATE</th>
					<th scope="col"></th>
					<th scope="col"></th>
				</tr>
			</thead>

			<%	Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Login");
			
			List<Login> list = q.list();			
			for (Login login : list) {
				
			%>

			<tr> 
				<td><%= login.getId() %></td>
				<td><%= login.getName() %></td>
				<td><%= login.getDept() %></td>
				<td><%= login.getSalary() %></td>
				<td><%= login.getJoindate() %></td>
				<td><a href="editemp.jsp?id=<%= login.getId() %>" class= "btn btn-primary">Update</a></td>
				<td><a href="DeleteServlet?id=<%= login.getId() %>" class= "btn btn-danger" >Delete</a></td>
			</tr>



			<%
			}

			s.close();
			%>
			
		</table>
	</div>
</body>
</html>