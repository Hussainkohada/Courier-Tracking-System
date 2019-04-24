package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PackageDAO;
import DAO.PackageDAOImpl;

/**
 * Servlet implementation class UpdatePackLoc
 */
@WebServlet("/UpdatePackLocServlet")
public class UpdatePackLocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePackLocServlet() {
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
		int id=Integer.parseInt(request.getParameter("consign_id"));
		String resp=new PackageDAOImpl().validateId(id);
		if(resp!=null) {
			request.getSession().setAttribute("checkconsigh", "Access");
			String str[]=resp.split("@");
			request.getSession().setAttribute("idfupdate", id);
			request.getSession().setAttribute("CurrLoc", str[0]);
			request.getSession().setAttribute("CurrStatus", str[1]);
			
			response.sendRedirect("StaffAdmin/UpdateLocPack.jsp");
		}else {
			request.getSession().setAttribute("statchange", "Invalid");
			request.getSession().setAttribute("checkconsigh", null);
			response.sendRedirect("StaffAdmin/UpdateLocPack.jsp");
		}
	}

}
