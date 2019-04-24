package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Staff_AdminDAO;
import DAO.Staff_AdminDAOImpl;

/**
 * Servlet implementation class DeleteStaffServlet
 */
@WebServlet("/DeleteStaffServlet")
public class DeleteStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStaffServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entered delete Servlet");
		String u_id=request.getParameter("u_id");
		System.out.println(u_id);
		PrintWriter out=response.getWriter();
		out.println("Successfully Deleted");
		Staff_AdminDAO dao=new Staff_AdminDAOImpl();
		dao.deleteStaff(u_id);
		response.sendRedirect("StaffAdmin/ShowStaffList.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
