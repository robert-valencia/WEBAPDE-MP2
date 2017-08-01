package MP2;

import javax.servlet.http.Cookie;

public class Person {
	public Person(String username, String password, String description){
		this.username = username;
		this.password = password;
		this.description = description;
	}
	
	public Person(String username, String password){
		this.username = username;
		this.password = password;
	}
	
	public Person(){
		
	}

	public static String username;

	private String password;
	
	private String description;

	private Cookie cookie;
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		System.out.println(username);
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Cookie getCookie() {
		return cookie;
	}
	
	public void setCookie(Cookie cookie) {
		this.cookie = cookie;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getDescription() {
		return description;
	}
	
}


