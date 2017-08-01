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
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("Login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		Person loginUser = UserService.login(username, password);
		if(loginUser == null){
			request.setAttribute("error", "Invalid Login Please Try Again");
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		else{	
			Cookie[] cookies = request.getCookies();
			HttpSession session = request.getSession();
			session.setAttribute("user", loginUser.getUsername());
			if(request.getParameter("Remember") != null){
				if(cookies != null){
					Cookie userCookie = new Cookie("user", request.getParameter("Username"));
					userCookie.setValue(request.getParameter("Username"));
					userCookie.setMaxAge(1814400);
					response.addCookie(userCookie);
				}
			}
			System.out.println(session.getAttribute("user"));
			response.sendRedirect("Home.jsp");
		}

	}
}
