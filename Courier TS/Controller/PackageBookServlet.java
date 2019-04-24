package Controller;

import java.io.IOException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import Model.Package;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import DAO.PackageDAO;
import DAO.PackageDAOImpl;
import DAO.UserDAO;
import DAO.UserDAOImpl;

/**
 * Servlet implementation class PackageRegServlet
 */
@WebServlet("/PackageBookServlet")
public class PackageBookServlet extends HttpServlet {
	 static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PackageBookServlet() {
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
		PackageDAO p_dao=new PackageDAOImpl();
		 int Consign_id=p_dao.getConsignId();
		 System.out.println(Consign_id);
		 String date=request.getParameter("Accept_date");
		 System.out.println(date);
		 Date Accept_dateU=null;
		 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		 try {
			 Accept_dateU=sdf.parse(date);
		 }catch(Exception E) {
			 System.out.println("Error : "+E);
		 }
		 java.sql.Date Accept_date=new java.sql.Date(Accept_dateU.getTime());
		 float Pack_Weight=Float.parseFloat(request.getParameter("Pack_Weight"));
		 float Cost=Float.parseFloat(request.getParameter("Cost"));
		 String Sender_addr=request.getParameter("Sender_addr");
		 String Receiver_addr=request.getParameter("Receiver_addr");
		 int Emp_id=Integer.parseInt(request.getParameter("Emp_id"));
		 int User_id=Integer.parseInt(request.getParameter("User_id"));
		 String Curr_loc=request.getParameter("curr_Loc");
		 String Pack_status=request.getParameter("pack_Status");
		 
		 UserDAO dao=new UserDAOImpl();
		 boolean resp=dao.validatecustomerId(User_id);
		 if(resp) {	 
		 
		 Pack_status=null;
		 if(request.getParameter("pack_Status")==null) {
			 Pack_status="Nil";
		 }
		 else {Pack_status=request.getParameter("pack_Status");}
		 Package p_obj=new Model.Package(Consign_id, Accept_date, Pack_Weight, Cost, Sender_addr, Receiver_addr, Emp_id, User_id, Curr_loc, Pack_status);
		 
		 try {
			 
			p_dao.create_Package(p_obj);
			System.out.println("Package Booked");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 if(request.getSession().getAttribute("key2").equals("Staff"))
			 	{	request.getSession().setAttribute("BokkedSuccess", "true");
			 		response.sendRedirect("StaffAdmin/PackageBook.jsp");
		
			 	}
		 else 	
			 {	request.getSession().setAttribute("BokkedSuccess", "true");
			 	response.sendRedirect("StaffAdmin/PackageBook.jsp");
			 }
	}
	
	else {
		Package tempobj=new Package(Consign_id, Accept_date, Pack_Weight, Cost, Sender_addr, Receiver_addr, Emp_id, User_id, Curr_loc, Pack_status);
		request.getSession().setAttribute("tempobj", tempobj);
		request.getSession().setAttribute("CustId", "Incorrect");
		response.sendRedirect("StaffAdmin/PackageBook.jsp");
	}
	}
}
