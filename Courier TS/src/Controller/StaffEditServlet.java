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
import Model.Staff_Admin;

/**
 * Servlet implementation class StaffEditServlet
 */
@WebServlet("/StaffEditServlet")
public class StaffEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffEditServlet() {
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
		 System.out.println(Corresp_Address);
		 int emp_id=Integer.parseInt(request.getSession().getAttribute("Editemp_id").toString());
		 Staff_Admin sa_obj=new Staff_Admin(F_name, L_name, Gender, E_Mail, Contact_num, userId, Password, Salary, Designation, Pmt_Address, Corresp_Address, "S");
		 Staff_AdminDAO dao=new Staff_AdminDAOImpl();
		 try {
			dao.Update_SADet(sa_obj, emp_id);
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Not Able to Update at update Servlet : "+e);
		}
		 response.sendRedirect("StaffAdmin/ShowStaffList.jsp");
	}

}
