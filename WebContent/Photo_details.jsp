<%@ page import="MP2.*"%>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<link type = "text/css" rel = "stylesheet" href = "style.css">
<title>Photo</title>
</head>
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
			
			<form action="/MachineProject/Logout" method="POST">
    			<input type="submit" value="Logout" class = "Logout"/>
			</form>
	</div>
	
	<br>
	<br>
	
	<div id = "Photo">
		<table id = "Photo_Table">
		
			<tr>
				
				<td>
					<img src="<%=((Photo)session.getAttribute("photo")).getFullURL() %>"/>
				</td>
				<td> 
					<table id = "Photo_Table_Details">
					<tr><td style = "height: 15px;"></td></tr>
						<tr><td> <%=((Photo)session.getAttribute("photo")).getTitle() %> </td></tr>
					<tr><td style = "height: 30px;"></td></tr>
						<tr><td> <%=((Photo)session.getAttribute("photo")).getDescription() %> </td></tr>
					<tr><td style = "height: 15px;"></td></tr>
						<tr>
							<td> Uploader </td>
							<td> <%=((Photo)session.getAttribute("photo")).getUploader() %> </td>
						</tr>
					<tr><td style = "height: 15px;"></td></tr>
						<tr> 
							<td> Tags: </td>
							<td> <%for(int i = 0; i < ((Photo)session.getAttribute("photo")).getTags().length; i++){
									out.print(((Photo)session.getAttribute("photo")).getTags()[i]);
									if(i != ((Photo)session.getAttribute("photo")).getTags().length-1){
										out.print(", ");
									}
								} %> 
							</td>
						</tr>
					<tr><td style = "height: 10px;"></td></tr>
					<%if(session.getAttribute("user").equals(((Photo)session.getAttribute("photo")).getUploader())){ %>
						<tr>
							<form action="/MachineProject/Edit" method="POST">
								<td style = "border: 0px solid black;"> 
	    							<input type="text" name="Tags" placeholder="tag1,tag2,tag3" class = "Add_Tag_Bar"/>
	    							<input type="text" name="SharedUsers" placeholder="user1,user2,user3" class = "Add_Tag_Bar"/>  
								</td>
								<td style = "border: 0px solid black;">
										<input type="submit" value="Update" class = "Add_Tag" />
								</td>
							</form>
						</tr>
					<%} %>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>

	<script>
			foo();
			function foo(){

			<%if (session.getAttribute("user") != null){%>
		
				document.getElementsByClassName('Logout')[0].style.visibility = 'visible';
				document.getElementsByClassName('Login')[0].style.visibility = 'hidden';	
				
			<%}else{%>
				document.getElementsByClassName('Logout')[0].style.visibility = 'hidden';
				document.getElementsByClassName('Login')[0].style.visibility = 'visible';
				document.getElementsByClassName('Profile')[0].style.visibility = 'hidden';
				
			<%}%>
		}
	</script>

</html>