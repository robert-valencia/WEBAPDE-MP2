package MP2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("This is working");
		HttpSession session = request.getSession();
		session.setAttribute("photoBase", PhotoDatabase.photoBase);
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user")) {
					session.setAttribute("user", cookie.getValue());
			    }
			}
		}
		
		String loginUser = Person.username;
		System.out.println("Login User: " + loginUser);
		//HttpSession session = request.getSession();
		String login = "false";
		
		if(loginUser != null) {
			//request.setAttribute("user", loginUser);
			login = "true";
			request.setAttribute("login", login);
			}
		else {
			request.setAttribute("login", login);
		}
		
		System.out.println("Logined: " + login);
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String loginUser = Person.username;
		System.out.println("Login User: " + loginUser);
		//HttpSession session = request.getSession();
		String login = "false";
		
		if(loginUser != null) {
			//request.setAttribute("user", loginUser);
			login = "true";
			request.setAttribute("login", login);
		}
		else {
			request.setAttribute("login", login);
		}
		System.out.println("Logined: " + login);
		System.out.println("login");
		request.getRequestDispatcher("Home.jsp").forward(request, response);

			
	}
	
	
}
