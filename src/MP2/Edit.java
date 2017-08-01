package MP2;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String tag = (String)request.getParameter("Tags");
		String sUsers = (String)request.getParameter("SharedUsers");
		String[] tags = null;
		String[] sharedUsers = null;
		if (tag != null){
			tags = tag.split(",");
			((Photo)session.getAttribute("photo")).setTags(tags);
		}
		if (sUsers != null){
			sharedUsers = sUsers.split(",");
			((Photo)session.getAttribute("photo")).setSharedUsers(sharedUsers);
		}
		request.getRequestDispatcher("Photo_details.jsp").forward(request, response);
	}

}
