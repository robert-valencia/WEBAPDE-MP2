package MP2;

public class UserService {
	public static Person login(String username, String password){
		return UserDatabase.getInstance().login(username, password);
	}
	public static Boolean register(String username, String password, String description){
		return UserDatabase.getInstance().register(username, password, description);
	}
}
