package MP2;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class ProfileFilter
 */
@WebFilter(urlPatterns="/UserProfile.jsp")
public class ProfileFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ProfileFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// cast to HttpServlet for use
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		// retrieve person from session 
		String person = (String)httpRequest.getSession().getAttribute("user");
		System.out.println(person);
		if (person == null) {
			// person is null means the user is not logged in. 
			// forward user to login page
			System.out.println("person is null");
			httpResponse.sendRedirect("/MachineProject/Login.jsp");
		} else {
			// if person is logged in then continue with the request
			ArrayList<Person> users = UserDatabase.userBase;
			for(int i = 0; i < users.size(); i++){
				System.out.println(users.size());
				System.out.println(i);
				System.out.println(users.get(i).getUsername());
				System.out.println(person);
				if(users.get(i).getUsername().equals("rob") || users.get(i).getUsername().equals("spencer") || users.get(i).getUsername().equals("marata")){
					System.out.println("person is not null and equal");
					httpRequest.getSession().setAttribute("userInfo", users.get(i));
					System.out.println(httpRequest.getSession().getAttribute("userInfo"));
					chain.doFilter(httpRequest, httpResponse);
				}
			}
			httpRequest.getSession().setAttribute("userInfo", new Person(person, "123", "This is " + person + "'s profile."));
			System.out.println("person is not null");
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
