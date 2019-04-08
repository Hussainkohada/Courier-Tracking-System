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
 * Servlet implementation class UpdatePackLoc
 */
@WebServlet("/UpdatePackLocServlet")
public class UpdatePackLocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePackLocServlet() {
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
		/*<br/> Consignment ID <input type="text" name="consign_id" >
<br/> Booking Date <input type="date" name="consign_date" >
<br/> Current Location <input type="text" name="consign_loc" >*/
		
		int id=Integer.parseInt(request.getParameter("consign_id"));
		String date=request.getParameter("consign_date");
		String location=request.getParameter("consign_loc");
		System.out.println(date);
		int count=0;
		PackageDAO dao=new PackageDAOImpl();
		try {
		count=dao.update_locationofPackage(location, id, date);
		if(count==0) {request.getSession().setAttribute("statchange", "Invalid");
					response.sendRedirect("StaffAdmin/UpdateLocPack.jsp");}
					else {
						response.sendRedirect("StaffAdmin/StaffHome.jsp");
					}
		}catch(Exception E) {
			System.out.println("Error at Updating Location "+ E);
		}
	}

}
