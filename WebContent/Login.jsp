
<html>
	<head>
	<link type = "text/css" rel = "stylesheet" href = "style.css">
		<title>Login/Register</title>
		<style>
		</style>
	</head>
	
	<body>
		<div class = "UpperBar">
			<form action="/MachineProject/Home.jsp" method="POST">
   				<input type="submit" value="Home" class ="Home" />
			</form>
			
			<form action="/MachineProject/Search" method="POST">
    			 <input type="text" name="Search" placeholder="Search tags.." class = "Search"/>  
			</form>

			<form action="/MachineProject/Login.jsp" method="POST">
    			<input type="submit" value="Login/Register" class = "Login"/>
			</form>
			
		</div>	
	
	
	
	<p> Log In </p>
	
		<form action="/MachineProject/Servlet" method="POST">
			<table>
				<tr>
					<td>Username</td>
					<td><input type="text" name="Username"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="Password"></td>
				</tr>
				<tr>
					<td>Remember me?</td>
					<td><input type="checkbox" name="Remember"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login"></td>
				</tr>
			</table>
		</form>
	
		<%if (request.getAttribute("error") != null){%>
			<%=request.getAttribute("error")%>
		<%} %>
		
	<br>
	
		<p> Register </p>
		<form action="/MachineProject/Register" method="POST">
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="Username"></td>
			</tr>
			<tr>
					<td>Password</td>
					<td><input type="password" name="Password"></td>
			</tr>
			<tr>
					<td>Description</td>
					<td><input id = "Textbox" type="text" name="Description"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register"></td>
			</tr>
		</table>
		</form>
		
	</body>
	
</html>