<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">Edit Page</h1>
	
		<%
			int id = Integer.parseInt(request.getParameter("id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Login login = (Login) s.get(Login.class, id);
		%>
		
		
		
		
		<form action="UpdateServlet" method="post">

		<input value= " <%= login.getId() %>" name="id"  type="hidden" />
			<div class="form-group">
				<label for="name">Name</label> 
				<input 
					name = "name"
					required type="text"
					class="form-control" 
					id="name" 
					aria-describedby="emailHelp"
					placeholder="Enter Name" 
					value = "<%= login.getName() %>"
					/>
			</div>

			<div class="form-group">
				<label for="dept">Dept</label> 
				<input 
					name = "dept"
					required type="text"
					class="form-control" 
					id="dept" 
					aria-describedby="emailHelp"
					placeholder="Enter Department"
					value = "<%= login.getDept() %>"
					/>
			</div>

			<div class="form-group">
				<label for="salary">Salary</label> 
				<input 
					name = "salary"
					required type="text"
					class="form-control" 
					id="salary" 
					aria-describedby="emailHelp"
					placeholder="Enter Salary" 
					value = "<%= login.getSalary() %>"
					/>
			</div>
			
			<div class="form-group">
				<label for="joindate">Joining Date</label> 
				<input
					name = "joindate"
				 	required type="text"
					class="form-control" 
					id="joindate" 
					aria-describedby="emailHelp"
					placeholder="Enter Joining Date"
					value = "<%= login.getJoindate() %>"
					/>
			</div>
		
		<div class="container text-center">
			<button type="submit" class="btn btn-success">Submit</button>
		</div>
		
		</form>
		
	
	</div>


</body>
</html>