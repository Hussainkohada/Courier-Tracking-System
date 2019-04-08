package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PackageDAO;
import DAO.PackageDAOImpl;

/**
 * Servlet implementation class UpdateStatusServlet
 */
@WebServlet("/UpdateStatusServlet")
public class UpdateStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatusServlet() {
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
		int Consign_id=Integer.parseInt(request.getParameter("Consign_id"));
		String Status=request.getParameter("pack_Status");
		PackageDAO p_obj=new PackageDAOImpl();
		try {
			p_obj.update_StatusofPackage(Status,Consign_id);
		}
		catch (ClassNotFoundException | SQLException e) {
				System.out.println("Exception : "+e);
			e.printStackTrace();
		}
		response.sendRedirect("StaffAdmin/UpdateDelivery_LocStatus.jsp");
	}

}
