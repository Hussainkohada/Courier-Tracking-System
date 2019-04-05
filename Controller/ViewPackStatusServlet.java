package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Package;
import DAO.PackageDAO;
import DAO.PackageDAOImpl;

/**
 * Servlet implementation class ViewPackStatus
 */
@WebServlet("/ViewPackStatusServlet")
public class ViewPackStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewPackStatusServlet() {
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
		int id=Integer.parseInt(request.getParameter("consign_id"));
		PackageDAO dao=new PackageDAOImpl();
		Package obj=new Package();
		try {
			obj=dao.getPackageByConsignId(id);
			System.out.println("Recieved package object");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		if(obj==null) {
		request.getSession().setAttribute("ConsignDet", null);}
		else {
			request.getSession().setAttribute("ConsignDet", obj);
		}
		response.sendRedirect("User/UserHome.jsp");
	}

}
