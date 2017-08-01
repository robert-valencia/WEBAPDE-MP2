<%@ page import="MP2.*"%>
<%@ page import="java.util.ArrayList"%>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
	$(document).ready(function(){
		$(".tr2").hide();
		$(".More_Photos").click(function(){
			$(".tr2").show();
		})
	})
	</script>
	<head>
	
		<!--<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>-->
		
		<title>Home</title>
		<link type= "text/css" rel="stylesheet" href="style.css">
		
		
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
    			<input type="submit" value="Logout" class = "Login"/>
			</form>

	

			
		</div>
	<!-- -----------------------------------User Profile--------------------------------------------- -->
		<div class = "UserProfile">
			<div>
				<img src = "blank-profile-picture-973460_640.png" class = "IMGProfile"  />
			</div>
			<div class = "UserName">
				<%=((Person)session.getAttribute("userInfo")).getUsername().toUpperCase() %>
			</div>
		</div>
		
	<!-- -----------------------------------User Description--------------------------------------------- -->
		<div class = "UserDescription">	
			<%=((Person)session.getAttribute("userInfo")).getDescription() %>
		</div>
		<br></br>
	<!-- -----------------------------------User Picture--------------------------------------------- -->
		<div class = "UserPictureContainer">
			<div class= "UserPicture">
			<table class = "Shared_Table">
			    <%
			    ArrayList<Photo> photos = new ArrayList<Photo>();
				  for(int i = 0; i < ((ArrayList<Photo>)session.getAttribute("photoBase")).size(); i ++){
					 if(((Person)session.getAttribute("userInfo")).getUsername().equals(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getUploader())){
						  photos.add(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i));
						}
				  }
				%>
				<%for(int i = 0; i < photos.size();){ %>
					<tr>
					<%for(int j = i; i < j + 5;){ %>
						<%session.setAttribute("photo", photos.get(i)); 
						%>
						<td>
							<form action="/MachineProject/PhotoFinder" method="POST">
							  	<input type="hidden" name="id" value="<%=photos.get(i).getID()%>">
								<input type="image" src="<%=photos.get(i).getThumbURL()%>">
							</form>
						</td>
						<%i++;%>
					<%} %>
					</tr>
				<%} %>
				<%for(int i = 0; i < photos.size();){ %>
					<tr class="tr2">
					<%for(int j = i; i < j + 5;){ %>
						<%session.setAttribute("photo", photos.get(i)); 
						%>
						<td>
							<form action="/MachineProject/PhotoFinder" method="POST">
							  	<input type="hidden" name="id" value="<%=photos.get(i).getID()%>">
								<input type="image" src="<%=photos.get(i).getThumbURL()%>">
							</form>
						</td>
						<%i++;%>
					<%} %>
					</tr>
				<%} %>
			</table>
		</div>
			</div>
		</div>
	<!-- -----------------------------------User More Photos--------------------------------------------- -->
		<div>
   				<button class ="More_Photos"> Load More </button>
		</div>
		
	</body>
</html>