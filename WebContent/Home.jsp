<%@ page import="MP2.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<html>
	<head>
		<link type = "text/css" rel = "stylesheet" href = "style.css">
		<title>Home</title>
		
		<style>
		</style>
			
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script>
		$(document).ready(function(){
			$(".tr2").hide();
			$(".More_Photos").click(function(){
				$(".tr2").show();
			})
		})
		</script>
	</head>
	<body>
	<div id = "box_UpperBar">
		<div class = "UpperBar">
			<form action="/MachineProject/Home" method="POST">
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
	</div>
		<br>
		
		<div id = "Photo_Label">
			<div class ="Public_Photos"> Public Photos </div>
			<%if(session.getAttribute("user") != null){ %>
			<div class = "Shared_Photos"> Shared Photos </div>
			<%} %>
		</div>
		<%if(session.getAttribute("user") != null){ %>
		<div id = "Upload_Photos_Outline">
			<div id = "Upload_Photos">
				<form action="/MachineProject/Upload.jsp" method="POST">
    				<input type="submit" value="Upload a Photo" class = "Upload"/>
				</form>
			</div>
		</div>
		<%} %>
		<br>
		<br>
		<br>
		
		<div id = "Public">
			<table class = "Public_Table">
			<%if(((String)request.getAttribute("Search")) == null) {%>
					<%for(int i = 0; i < ((ArrayList<Photo>)session.getAttribute("photoBase")).size();){ %>
						<tr class="t1">
							<%for(int j = i; i < j + 5;){ %>
								<%if(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getPrivacy() != "private"){ %>
									<%session.setAttribute("photo", ((ArrayList<Photo>)session.getAttribute("photoBase")).get(i)); %>
									<td>
										
										<form action="/MachineProject/PhotoFinder" method="POST">
										  	<input type="hidden" name="id" value="<%=((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getID()%>">
											<input type="image" src="<%=((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getThumbURL()%>">
										</form>
									</td>
								<%} %>
								<%i++;%>
							<%} %>
						</tr>
					<%} %>
					<%for(int i = 0; i < ((ArrayList<Photo>)session.getAttribute("photoBase")).size();){ %>
						<tr class="tr2">
						<%for(int j = i; i < j + 5;){ %>
								<%if(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getPrivacy() != "private"){ %>
									<%session.setAttribute("photo", ((ArrayList<Photo>)session.getAttribute("photoBase")).get(i)); %>
									<td>
										
										<form action="/MachineProject/PhotoFinder" method="POST">
										  	<input type="hidden" name="id" value="<%=((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getID()%>">
											<input type="image" src="<%=((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getThumbURL()%>">
										</form>
									</td>
								<%} %>
								<%i++;%>
							<%} %>
						</tr>
						<%session.setAttribute("photoAmt", i); %>
					<%} %>
					
			<%} else{ %>
				<%
			    ArrayList<Photo> search = new ArrayList<Photo>();
				  for(int i = 0; i < ((ArrayList<Photo>)session.getAttribute("photoBase")).size(); i ++){
					  for(int j = 0; j < ((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getTags().length; j++){
						  if(((String)request.getAttribute("Search")).equals(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getTags()[j]) && (((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getPrivacy() != "private" || ((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getUploader() == (String)session.getAttribute("user"))){
							  search.add(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i));
						  }
					  }
				  }
				  System.out.println(search.size());
				%>
				<%for(int i = 0; i < search.size();){ %>
					<tr>
					<%if(search.size() > 4){%>
						<%for(int j = i; i < j + 5; i++){ %>
								<%System.out.println(search.size());
								session.setAttribute("photo", search.get(i)); 
								%>
								<td>
									<form action="/MachineProject/PhotoFinder" method="POST">
									  	<input type="hidden" name="id" value="<%=search.get(i).getID()%>">
										<input type="image" src="<%=search.get(i).getThumbURL()%>">
									</form>
								</td>

							
						<%} %>
					<%} else{%>
						
								<%System.out.println(search.size());
								session.setAttribute("photo", search.get(i)); 
								%>
								<td>
									<form action="/MachineProject/PhotoFinder" method="POST">
									  	<input type="hidden" name="id" value="<%=search.get(i).getID()%>">
									  	<%System.out.println("hi");%>
										<input type="image" src="<%=search.get(i).getThumbURL()%>">
									</form>
								</td>
								<%i++;%>		
					<%} %>
					</tr>
				<%} %>
			<%} %>
			</table>
		</div>
		<%if(session.getAttribute("user") != null){ %>
		<div id = "Shared">
			<table class = "Shared_Table">
			    <%
			    ArrayList<Photo> photos = new ArrayList<Photo>();
				  for(int i = 0; i < ((ArrayList<Photo>)session.getAttribute("photoBase")).size(); i ++){
					  for(int j = 0; j < ((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getSharedUsers().length; j++){
						  System.out.print(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getPrivacy());
						  if(((String)session.getAttribute("user")).equals(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getSharedUsers()[j])){
							  if(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i).getPrivacy().equals("private"))
							  	photos.add(((ArrayList<Photo>)session.getAttribute("photoBase")).get(i));
						  }
					  }
				  }
				%>
				<%for(int i = 0; i < photos.size();){ %>
					<tr>
					<%if(photos.size() > 4){%>
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
					<%} else {%>
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
		<%} %>
		
		<div id = Outline_More_Photos>
   			<button value="More Photos" class ="More_Photos" onclick="load_more();">Load more</button>
		</div>
		
			<%
				String login = (String)request.getAttribute("login");
			%>
			<script>
			//foo();
			//function foo(){
			//	Sytem.out.println("hi");
			//	var value = "<%=login%>";
			//	//alert(value);
			//	if(value == "false"){
			//		alert("hi");
			//		//alert(value);
			//		document.getElementsByClassName('Logout')[0].style.visibility = 'hidden';
			//		document.getElementsByClassName('Shared_Table')[0].style.visibility = 'hidden';
			//		document.getElementsByClassName('Shared_Photos')[0].style.visibility = 'hidden';
			//		document.getElementById('Upload_Photos').style.visibility = 'hidden';
			//		document.getElementsByClassName('Login')[0].style.visibility = 'visible';
			//	}
			//	else{
			//		document.getElementsByClassName('Logout')[0].style.visibility = 'visible';
			//		document.getElementsByClassName('Shared_Table')[0].style.visibility = 'visible';
			//		document.getElementsByClassName('Shared_Photos')[0].style.visibility = 'visible';
			//		document.getElementById('Upload_Photos').style.visibility = 'visible';
			//		document.getElementsByClassName('Login')[0].style.visibility = 'hidden';
			//	}
			//}
			
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
	
		
	</body>
</html>