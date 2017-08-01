package MP2;

import java.util.ArrayList;

public class UserDatabase {
	public static ArrayList<Person> userBase = new ArrayList<Person>();
	public static UserDatabase userDatabase = new UserDatabase();
	private UserDatabase(){
		userBase.add(new Person("spencer", "123", "Current living as a NEET, and plays MMORPG games like FFXIV and World of Warcraft 24/7."));
	}
	
	public static UserDatabase getInstance(){
		return userDatabase;
	}
	
	public Person login(String username, String password){
		if(username.equals("rob") && password.equals("123")){
			Person user = new Person("rob", "123");
			return user;
		}else if(username.equals("spencer") && password.equals("123")){
			Person user = new Person("spencer", "123");
			return user;
		}else if(username.equals("marata") && password.equals("123")){
			Person user = new Person("marata", "123");
			return user;
		}else{
			return null;
		}
	}
	public Boolean register(String username, String password, String description){
		
		for(Person user: userBase){
			if(user.getUsername().equals(username) && user.getPassword().equals(password)){
				return true;
			}
		}
		Person newUser = new Person();
		newUser.setUsername(username);
		newUser.setPassword(password);
		newUser.setDescription(description);
		userBase.add(newUser);
		
		return false;
	}

}
