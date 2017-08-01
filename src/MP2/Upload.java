package MP2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload() {
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
		String privacy = request.getParameter("button");
		int ID = ((int)session.getAttribute("photoAmt"))+1;
		String thumbURL = "https://i.imgur.com/eyNKuvd.jpg";
		String fullURL = "https://i.imgur.com/0YjKZBL.jpg";
		String title = (String)request.getParameter("Title");
		String description = (String)request.getParameter("Description");
		String uploader = (String)session.getAttribute("user");
		String tag = (String)request.getParameter("Tags");
		String sUsers = (String)request.getParameter("SharedUsers");
		String[] tags = null;
		String[] sharedUsers = null;
		if(privacy == null || title == null ||description == null || uploader == null)
			request.getRequestDispatcher("Upload.jsp").forward(request, response);
		if (tag != null){
			tags = tag.split(",");
		}
		if (sUsers != null){
			sharedUsers = sUsers.split(",");
		}
		
		Photo photo = new Photo(privacy, ID, thumbURL, fullURL, title, description, uploader, tags, sharedUsers);

		session.setAttribute("photo", photo);
		request.getRequestDispatcher("Photo_details.jsp").forward(request, response);
	}

}
