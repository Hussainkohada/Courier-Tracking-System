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
import DAO.UserDAO;
import DAO.UserDAOImpl;

/**
 * Servlet implementation class ULoginServlet
 */
@WebServlet("/ULoginServlet")
public class ULoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ULoginServlet() {
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
		UserDAO dao=new UserDAOImpl();
		resp=dao.checkLoginField(u_id, pwd);
		
		if(resp) {
			//redirect to home
		}else {
			request.getSession().setAttribute("login_status", "Invalid Credentials");
			response.sendRedirect("StaffAdmin/A_SLoginPage.jsp");
		
		}
	}

}
