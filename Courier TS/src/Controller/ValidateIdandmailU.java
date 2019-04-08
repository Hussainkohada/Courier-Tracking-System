package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Staff_AdminDAOImpl;
import DAO.UserDAO;
import DAO.UserDAOImpl;
import Model.User;

/**
 * Servlet implementation class ValidateIdandmail
 */
@WebServlet("/ValidateIdandmailU")
public class ValidateIdandmailU extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateIdandmailU() {
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
		System.out.println("Entering Validation Servlet");
		String u_id=request.getParameter("userId");
		String e_mail=request.getParameter("E_Mail");
		boolean respu=new UserDAOImpl().validateidandmail(u_id, e_mail);
		System.out.println(respu);
		if(respu) {
			String F_name=request.getParameter("F_name");
			String L_name=request.getParameter("L_name");
			String Gender=request.getParameter("Gender");
			String E_Mail=request.getParameter("E_Mail");
			long Contact_num=Long.parseLong(request.getParameter("Contact_num"));
			String userId=request.getParameter("userId");
			String Password=request.getParameter("Password");
			User u_obj=new User(F_name, L_name, Gender, E_Mail, Contact_num, userId, Password);
			UserDAO u_dao=new UserDAOImpl();
			int customerid=0;
			try {
				customerid=u_dao.Create_UserDet(u_obj);
				System.out.println("User Created");
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
			response.sendRedirect("User/UserLoginPage.jsp");
		}
		
		else {
			request.getSession().setAttribute("Flagu", "Denied");
			response.sendRedirect("User/UserReg.jsp");
		}
	}

}