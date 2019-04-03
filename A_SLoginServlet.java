package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax .servlet.http.HttpServletResponse;

import DAO.Staff_AdminDAO;
import DAO.Staff_AdminDAOImpl;
import Model.Staff_Admin;

/**
 * Servlet implementation class A_SLoginServlet
 */
@WebServlet("/A_SLoginServlet")
public class A_SLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_SLoginServlet() {
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
			String u_id=request.getParameter("u_id");
			String pwd=request.getParameter("pwd");
			
			boolean resp=false;
			Staff_AdminDAO dao=new Staff_AdminDAOImpl();
			resp=dao.checkLoginField(u_id, pwd);
			
			if(resp) {
				Staff_Admin obj=new Staff_Admin();
				try {
					obj=dao.getSADetbyId(u_id);
					System.out.println("Recieved Object");
					if(obj.getLogin_type().equals("A"))	response.sendRedirect("StaffAdmin/AdminHome.jsp");
					else response.sendRedirect("StaffAdmin/StaffHome.jsp");
				} catch (ClassNotFoundException | SQLException e) {
				System.out.println("Exception : "+e);
					e.printStackTrace();
				}
			
				
			}else {
				request.getSession().setAttribute("login_status", "Invalid Credentials");
				response.sendRedirect("StaffAdmin/A_SLoginPage.jsp");
			
			}
			 
		
	}

}