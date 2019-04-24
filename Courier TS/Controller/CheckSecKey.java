package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckSecKey
 */
@WebServlet("/CheckSecKey")
public class CheckSecKey extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckSecKey() {
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
		String sec_key=request.getParameter("sec_code");
		if(sec_key.equals("haha9798")) {
			request.getSession().setAttribute("TypeStaff", "StaffReg");
			response.sendRedirect("StaffAdmin/Admin_StaffReg.jsp");
		}
		else {
			request.getSession().setAttribute("login_status", "Invalid Key");
			response.sendRedirect("StaffAdmin/A_SLoginPage.jsp");
		}
	}

}
