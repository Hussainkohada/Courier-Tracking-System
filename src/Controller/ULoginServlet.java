package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Staff_AdminDAO;
import DAO.Staff_AdminDAOImpl;
import DAO.UserDAO;
import DAO.UserDAOImpl;
import Model.Staff_Admin;
import Model.User;

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
		boolean resp1=false,resp2=false;;
		UserDAO dao=new UserDAOImpl();
		resp1=dao.checkLoginFieldbyuserId(u_id, pwd);
		resp2=dao.checkLoginFieldbyemail(u_id, pwd);
		
		if(resp1 || resp2) {
			User obj=new User();
			try {
				System.out.println("Login success " + resp1 + " " + resp2 );
				obj=dao.ViewUserbyId(u_id);
				
				int cust_id=dao.getCustomerId(obj);
				System.out.println("Recieved User Object");
				System.out.println(cust_id);
				request.getSession().setAttribute("cust_name", obj.getF_name()+" "+obj.getL_name());
				request.getSession().setAttribute("cust_id",cust_id);
				request.getSession().setAttribute("login_status", null);
				response.sendRedirect("User/UserHome.jsp");
				
			} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Exception UloginServlet: "+e);
				e.printStackTrace();
			}		
		
		}else {
			//request.getSession().setAttribute("login_status", "Invalid Credentials");
			//response.sendRedirect("LoginHome.jsp");
			
            request.getSession().setAttribute("loginaccess", "Invalid User ID/ Email ID and Password");
            response.sendRedirect("LoginHome.jsp");
		
			  
		}
	}

}
