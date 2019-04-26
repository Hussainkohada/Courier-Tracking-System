package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PackageDAO;
import DAO.PackageDAOImpl;

/**
 * Servlet implementation class FinalEditLocSatusServlet
 */
@WebServlet("/FinalEditLocSatusServlet")
public class FinalEditLocSatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FinalEditLocSatusServlet() {
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
	int id=Integer.parseInt(request.getSession().getAttribute("idfupdate").toString());
	System.out.println(id);
	String location=request.getParameter("consign_loc");
	System.out.println(location);
	String status=request.getParameter("curr_status");
	System.out.println(status);
	PackageDAO dao=new PackageDAOImpl();
	try {
		System.out.println("Updating started");
		int count=dao.update_locationofPackage(location, id, status);
		if(count==1)System.out.println("Updated Successfully");
		else System.out.println("No Updation Found");
		request.getSession().setAttribute("result", "Package Updated Successfully");
		response.sendRedirect("StaffAdmin/UpdateLocPack.jsp");
	}catch(Exception E) {
		System.out.println("Error While Updating");
		
	}
	
	}

}
