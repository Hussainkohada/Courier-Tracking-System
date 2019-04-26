package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Staff_AdminDAO;
import DAO.Staff_AdminDAOImpl;
import DAO.UserDAOImpl;
import Model.Staff_Admin;

/**
 * Servlet implementation class ValidateIdandmailSA
 */
@WebServlet("/ValidateIdandmailSA")
public class ValidateIdandmailSA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateIdandmailSA() {
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
		String u_id=request.getParameter("userId");
		String e_mail=request.getParameter("E_Mail");
		boolean respsa=new Staff_AdminDAOImpl().validateidandmail(u_id, e_mail);
		
			String F_name=request.getParameter("F_name");
			String L_name=request.getParameter("L_name");
			String Gender=request.getParameter("Gender");
			String E_Mail=request.getParameter("E_Mail");
			long Contact_num=Long.parseLong(request.getParameter("Contact_num"));
			String userId=request.getParameter("userId");
			String Password=request.getParameter("Password");
			 int Salary=Integer.parseInt(request.getParameter("Salary"));
			 String Designation=request.getParameter("Designation");
			 String Pmt_Address=request.getParameter("Pmt_Address");
			 String Corresp_Address=request.getParameter("Corresp_Address");
			 String Login_type=request.getParameter("Login_type");
			 
			 Staff_Admin sa_obj=new Staff_Admin(F_name, L_name, Gender, E_Mail, Contact_num, userId, Password, Salary, Designation, Pmt_Address, Corresp_Address, Login_type);
			 Staff_AdminDAO sa_dao=new Staff_AdminDAOImpl();
			 if(respsa) {	 
			 try {
				sa_dao.create_SADet(sa_obj);
				System.out.println("Admin/Staff Created");
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 			 
			 if(request.getSession().getAttribute("TypeStaff").equals("StaffReg"))response.sendRedirect("LoginHome.jsp");
			 else if(request.getSession().getAttribute("key2").equals("Admin")) {			 
			 response.sendRedirect("StaffAdmin/AdminHome.jsp");}
			 
		}
		else {
			request.getSession().setAttribute("InvalidSAdet", sa_obj);
			request.getSession().setAttribute("Flagsa", "Denied");
			response.sendRedirect("StaffAdmin/Admin_StaffReg.jsp");
		}
	}

}
