<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Data</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h1>ADD YOUR DATA</h1>
		<br>

		<!-- THIS ISADD FORM -->

		<form action="SaveLoginData" method="post">
			<div class="form-group">
				<label for="name">Name</label> 
				<input 
					name = "name"
					required type="text"
					class="form-control" 
					id="name" 
					aria-describedby="emailHelp"
					placeholder="Enter Name" />
			</div>

			<div class="form-group">
				<label for="dept">Dept</label> 
				<input 
					name = "dept"
					required type="text"
					class="form-control" 
					id="dept" 
					aria-describedby="emailHelp"
					placeholder="Enter Department">
			</div>

			<div class="form-group">
				<label for="salary">Salary</label> 
				<input 
					name = "salary"
					required type="text"
					class="form-control" 
					id="salary" 
					aria-describedby="emailHelp"
					placeholder="Enter Salary">
			</div>
			
			<div class="form-group">
				<label for="joindate">Joining Date</label> 
				<input
					name = "joindate"
				 	required type="text"
					class="form-control" 
					id="joindate" 
					aria-describedby="emailHelp"
					placeholder="Enter Joining Date">
			</div>
		
		<div class="container text-center">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
		
		</form>




	</div>

</body>
</html>