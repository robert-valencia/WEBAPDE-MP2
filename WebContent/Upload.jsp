<%@ page import="MP2.*"%>
<html>
<head>
<link type = "text/css" rel = "stylesheet" href = "style.css">
<title>Upload</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script>
		function PrivateShare(){
			document.getElementById('Share_Option').style.visibility = 'visible';
		}
		
		function PublicNoShare(){
			document.getElementById('Share_Option').style.visibility = 'hidden';	
		}
		</script>
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

			<form action="/MachineProject/Logout" method="POST">
    			<input type="submit" value="Logout" class = "Logout"/>
			</form>
	</div>
	
	<br>
	<br>
	
	<div id = "Photo">
	<form action="/MachineProject/Upload" method="POST">
		<table id = "Photo_Table">
			<tr>
				<td> <img src="https://i.imgur.com/0YjKZBL.jpg"/> </td>
				<td> 
				<table id = "Photo_Table_Details">
					
					<tr><td style = "height: 15px;"></td></tr>
					
						<tr><td> 
								<input type="text" name="Title" placeholder="Add Title..." class = "Add_Title"/>
						 </td></tr>
						 
					<tr><td style = "height: 15px;"></td></tr>
					
						<tr><td>
								<input type="text" name="Description" placeholder="Add Description..." class = "Add_Description"/>
						 </td></tr>
						 
					<tr><td style = "height: 15px;"></td></tr>

						
					<tr><td style = "height: 10px;"></td></tr>
					
						<tr>
							<td> 
    							<input type="text" name="Tags" placeholder="tag1,tag2,tag3" class = "Add_Tag_Bar"/>  
							</td>
							
						</tr>
						
					<tr><td style = "height: 15px;"></td></tr>	
					
						<tr>
							<td>
								<label><input type="radio" name=button value="Public" onclick = "PublicNoShare()" class="radio"> Public </label>
							</td>
							<td style = "border: 0px solid black;">
								<label> <input type="radio" name=button value="Private" onclick = "PrivateShare()" class="radio"> Private </label>
							</td>
						</tr>
						
					<tr><td style = "height: 15px;"></td></tr>	
						
						<tr><td>
						<table id = "Share_Option">
							<tr>
								<td> 
    								<input type="text" name="SharedUsers" placeholder="person1,person2,person3" class = "Add_Tag_Bar"/>  
								</td>
							</tr>

						</table>
						</td></tr>
						
						<tr><td>
							
								<input type="submit" name="Thing" value="Upload" class = "Upload_All" />
							
						</td></tr>
					</table>
				</td>
			</tr>
		</table>
		</form>	
	</div>
</body>

</html>