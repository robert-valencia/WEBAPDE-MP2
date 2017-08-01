<html>
	<head>
		<link type = "text/css" rel = "stylesheet" href = "style.css">
		<title>Shared Photos</title>
		<style>
		</style>
		
	</head>
	<body>
		<div class = "UpperBar">
			<form action="/MachineProject/Home.jsp" method="POST">
   				<input type="submit" value="Home" class ="Home" />
			</form>

			<form action="/MachineProject/UserProfile.jsp" method="POST">
  				<input type="submit" value="Profile" class = "Profile" />
			</form>

			<form action="/MachineProject/Login.jsp" method="POST">
    			 <input type="text" name="Search" placeholder="Search tags.." class = "Search"/>  
			</form>
		
			<form action="/MachineProject/Login.jsp" method="POST">
    			<input type="submit" value="Login/Register" class = "Login"/>
			</form>
		
		
		</div>
		
		<br>
		
		<div class = "Photos_Choice">
			<form action="/MachineProject/Home.jsp" method="POST">
   				<input type="submit" value="Public Photos" class ="Public_Photos" />
			</form>
			
			<form action="/MachineProject/SharedPhotos.jsp" method="POST">
   				<input type="submit" value="Shared Photos" class ="Shared_Photos" />
			</form>
		
		</div>
		
	</body>
</html>