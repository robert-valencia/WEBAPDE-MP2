
<html>
<head>
<link type = "text/css" rel = "stylesheet" href = "style.css">
<title>Access Denied</title>
</head>
<body>

	<body>
		<div class = "UpperBar">
			<form action="/MachineProject/Home.jsp" method="POST">
   				<input type="submit" value="Home" class ="Home" />
			</form>

			<form action="/MachineProject/UserProfile.jsp" method="POST">
  				<input type="submit" value="Profile" class = "Profile" />
			</form>

			<form action="/MachineProject/Search" method="POST">
    			 <input type="text" name="Search" placeholder="Search tags.." class = "Search"/>  
			</form>

			<form action="/MachineProject/Login.jsp" method="POST">
    			<input type="submit" value="Login/Register" class = "Login"/>
			</form>
			
		</div>	

	<p>Please Log In or Register to view this page</p>

</body>
</html>