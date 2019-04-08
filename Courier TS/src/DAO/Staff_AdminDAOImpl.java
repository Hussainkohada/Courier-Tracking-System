package DAO;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import Model.ConnectionClass;
import Model.Staff_Admin;

public class Staff_AdminDAOImpl implements Staff_AdminDAO {
	public void create_SADet(Staff_Admin obj)throws ClassNotFoundException, SQLException{
		
		try {
			Connection con = ConnectionClass.getConnection();
		    String qry="Insert into Staff_Admin values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		    PreparedStatement ps=con.prepareStatement(qry);
		    int id=getEmployeeId()+1;
		    ps.setInt(1,id);
		    ps.setString(2, obj.getF_name());
			ps.setString(3, obj.getL_name());
			ps.setString(4, obj.getGender());
			ps.setString(5, obj.getE_Mail());
			ps.setLong(6, obj.getContact_num());
			ps.setString(7, obj.getUserId());
			ps.setString(8, obj.getPassword());
			ps.setInt(9, obj.getSalary());
			ps.setString(10, obj.getDesignation());
			ps.setString(11, obj.getPmt_Address());
			ps.setString(12, obj.getCorresp_Address());
			ps.setString(13, obj.getLogin_type());
			
			int count=ps.executeUpdate();
			System.out.println(count+" Row(s) Inserted");
			con.close();
		}catch(Exception E) {
			System.out.println("Exception E");
		}
	}
	public void Update_SADet(Staff_Admin obj,int emp_id) throws ClassNotFoundException, SQLException{
		try {
			Connection con = ConnectionClass.getConnection();
		    String qry="Update Staff_Admin set  First_Name=?, Last_Name=?, Gender=?, Email=?,Contact_Number=?,UserId=?,\r\n" + 
		    		"Password=?,Salary=?,Designation=?,Permanent_Address=?,Correspondance_Address=?,\r\n" + 
		    		"Login_Type=? where Employee_Id="+emp_id;
		   
		    PreparedStatement ps=con.prepareStatement(qry);
		    
		    ps.setString(1, obj.getF_name());
				ps.setString(2, obj.getL_name());
				ps.setString(3, obj.getGender());
				ps.setString(4, obj.getE_Mail());
				ps.setLong(5, obj.getContact_num());
				ps.setString(6, obj.getUserId());
				ps.setString(7, obj.getPassword());
				ps.setInt(8, obj.getSalary());
				ps.setString(9, obj.getDesignation());
				ps.setString(10, obj.getPmt_Address());
				ps.setString(11, obj.getCorresp_Address());
				ps.setString(12, obj.getLogin_type());
			
			int count=ps.executeUpdate();
			System.out.println(count+" Row(s)  Updated");
			con.close();		    
		}catch(Exception E) {
			System.out.println("Exception : "+E);
		}
	}
	public Staff_Admin getSADetbyId(String SA_id) throws ClassNotFoundException, SQLException{
	Staff_Admin obj=new Staff_Admin();
		try {
			Connection con = ConnectionClass.getConnection();
		    String qry="Select * from Staff_Admin where UserId='"+SA_id+"'";
		    Statement stmt=con.createStatement();
		    ResultSet rs=stmt.executeQuery(qry);
		    while(rs.next()) {
		    	String f_name=rs.getString(2);
		    	String l_name=rs.getString(3);
		    	String gender=rs.getString(4); 
		    	String e_Mail=rs.getString(5); 
		    	long contact_num=rs.getLong(6);
		    	String userId=rs.getString(7);
				String password=rs.getString(8);
				int salary=rs.getInt(9);
				String designation=rs.getString(10);
				String pmt_Address=rs.getString(11);
				String corresp_Address=rs.getString(12);
				String login_type=rs.getString(13);
				obj=new Staff_Admin(f_name, l_name, gender, e_Mail, contact_num, userId, password, salary, designation, pmt_Address, corresp_Address, login_type);
		    }con.close();
		}catch(Exception E) {
			System.out.println("Exception E");
		}
	return obj;
	}
	public Staff_Admin getSADetbyEmailId(String email_id) throws ClassNotFoundException, SQLException{
		Staff_Admin obj=new Staff_Admin();
		try {
			Connection con = ConnectionClass.getConnection();
		    String qry="Select * from Staff_Admin where Email='"+email_id+"'";
		    Statement stmt=con.createStatement();
		    ResultSet rs=stmt.executeQuery(qry);
		    while(rs.next()) {
		    	String f_name=rs.getString(2);
		    	String l_name=rs.getString(3);
		    	String gender=rs.getString(4); 
		    	String e_Mail=rs.getString(5); 
		    	long contact_num=rs.getLong(6);
		    	String userId=rs.getString(7);
				String password=rs.getString(8);
				int salary=rs.getInt(9);
				String designation=rs.getString(10);
				String pmt_Address=rs.getString(11);
				String corresp_Address=rs.getString(12);
				String login_type=rs.getString(13);
				obj=new Staff_Admin(f_name, l_name, gender, e_Mail, contact_num, userId, password, salary, designation, pmt_Address, corresp_Address, login_type);
		    }
		    con.close();
		}catch(Exception E) {
			System.out.println("Exception E");
		}
	return obj;
	}
	public List<Staff_Admin>  SA_ViewDet() throws ClassNotFoundException, SQLException{
		List<Staff_Admin> SA_View=new ArrayList<>();
		try {
		
		Connection con = ConnectionClass.getConnection();
		String qry="Select * from Staff_Admin where Login_Type='S'";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(qry);
			while(rs.next()) {
		    	String f_name=rs.getString(2);
		    	String l_name=rs.getString(3);
		    	String gender=rs.getString(4); 
		    	String e_Mail=rs.getString(5); 
		    	long contact_num=rs.getLong(6);
		    	String userId=rs.getString(7);
				String password=rs.getString(8);
				int salary=rs.getInt(9);
				String designation=rs.getString(10);
				String pmt_Address=rs.getString(11);
				String corresp_Address=rs.getString(12);
				String login_type=rs.getString(13);
				SA_View.add(new Staff_Admin(f_name, l_name, gender, e_Mail, contact_num, userId, password, salary, designation, pmt_Address, corresp_Address, login_type));
				}
			con.close();
		}catch(Exception E)
		{
			System.out.println("Exception at View: "+E);
		}
	return SA_View;	
	}
	@Override
	public boolean checkLoginFieldbyUserID(String u_id, String pwd) {
		boolean resp=false;
		Staff_Admin obj=null;
		try{
			Connection con = ConnectionClass.getConnection();
		    String qry="Select UserId,Password from Staff_Admin where UserId='"+u_id+"'";
		    Statement stmt=con.createStatement();
		    ResultSet rs=stmt.executeQuery(qry);
		    rs.next();
		    String cu_id=rs.getString(1);
		    String cpwd=rs.getString(2);
		    if(cu_id.equals(u_id) && cpwd.equals(pwd)) {
		    	resp=true;
		    }
		    else resp=false;
		    con.close();
		}catch(Exception E) {
			System.out.println("Error : "+E);
		}
	    return resp;
	}
	@Override
	public boolean checkLoginFieldbyEmailID(String mail_id, String pwd) {
		boolean resp=false;
		Staff_Admin obj=null;
		try{
			Connection con = ConnectionClass.getConnection();
		    String qry="Select Email,Password from Staff_Admin where Email='"+mail_id+"'";
		    Statement stmt=con.createStatement();
		    ResultSet rs=stmt.executeQuery(qry);
		    rs.next();
		    String cu_id=rs.getString(1);
		    String cpwd=rs.getString(2);
		    if(cu_id.equals(mail_id) && cpwd.equals(pwd)) {
		    	resp=true;
		    }
		    else resp=false;
		    con.close();
		}catch(Exception E) {
			System.out.println("Error : "+E);
		}
	    return resp;
	}
	public int getEmployeeId() {
		int id=0;
		try {
			Connection con = ConnectionClass.getConnection();
			String qry="Select Employee_Id from staff_admin";
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(qry);
			rs.last();
			id=rs.getInt(1);
			if(id==0) id=29200114;
			con.close();
		}catch(Exception E) {
			System.out.println("Exception : "+E);
		}
	return id;
	}
	public int getEmployeeId(Staff_Admin obj) {
			int id=0;
			try {
				Connection con = ConnectionClass.getConnection();
				String qry="Select Employee_Id from staff_admin where UserId='"+obj.getUserId()+"'";
				Statement stmt=con.createStatement();
				ResultSet rs=stmt.executeQuery(qry);
				rs.last();
				id=rs.getInt(1);
				con.close();
				}catch(Exception E) {
				System.out.println("Exception : "+E);
			}
		return id;
		}
	@Override
	public void deleteStaff(String u_id) {
		try {
			Connection con = ConnectionClass.getConnection();
			String qry="Delete from staff_admin where UserId='"+u_id+"'";
			Statement stmt=con.createStatement();
			stmt.executeUpdate(qry);
			con.close();
			
		}catch(Exception E) {
			System.out.println("Error during Deleting");
		}
		
	}
	@Override
	public boolean validateidandmail(String u_id, String email) {
		boolean resp=false;
		try { boolean resp1=false,resp2=false;
			Connection con = ConnectionClass.getConnection();
			String qry="Select UserId  from staff_admin where UserId='"+u_id+"'";
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(qry);
			if(rs.next()) resp1=true;
			rs.close();
			String qry1="Select Email  from staff_admin where Email='"+email+"'";
			Statement stmt1=con.createStatement();
			ResultSet rs1=stmt1.executeQuery(qry1);
			if(rs1.next()) resp2=true;
			rs1.close();
			if(resp1==true || resp2==true) resp=false;
			else resp=true;
		}catch(Exception E) {
			System.out.println("Error at Validation");
		}
		return resp;
	}
}