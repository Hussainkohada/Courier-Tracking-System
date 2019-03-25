package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import Model.Staff_Admin;

public class Staff_AdminDAOImpl implements Staff_AdminDAO {
	public void create_SADet(Staff_Admin obj)throws ClassNotFoundException, SQLException{
		
		try {
			ResourceBundle rb= ResourceBundle.getBundle("mysql");
		    String url=rb.getString("db.url");
		    String user=rb.getString("db.username");
		    String pass=rb.getString("db.password");
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection(url,user,pass);
		    String qry="Insert into Staff_Admin values(?,?,?,?,?,?,?,?,?,?,?,?)";
		    PreparedStatement ps=con.prepareStatement(qry);
		    
		    ps.setString(1, obj.getF_name());
			ps.setString(2, obj.getL_name());
			ps.setString(3, obj.getGender());
			ps.setString(4, obj.getE_Mail());
			ps.setLong(5, obj.getContact_num());
			ps.setInt(6, obj.getUserId());
			ps.setString(7, obj.getPassword());
			ps.setInt(8, obj.getSalaray());
			ps.setString(9, obj.getDesignation());
			ps.setString(10, obj.getPmt_Address());
			ps.setString(11, obj.getCorresp_Address());
			ps.setString(12, obj.getLogin_type());
			
			int count=ps.executeUpdate();
			System.out.println(count+" Row(s) Inserted");
			con.close();
		}catch(Exception E) {
			System.out.println("Exception E");
		}
	}
	
	public void Update_SADet(Staff_Admin obj) throws ClassNotFoundException, SQLException{
		try {
			ResourceBundle rb= ResourceBundle.getBundle("mysql");
		    String url=rb.getString("db.url");
		    String user=rb.getString("db.username");
		    String pass=rb.getString("db.password");
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection(url,user,pass);
		    String qry="Update set Staff_Admin String f_name=?, String l_name=?, String gender=?, String e_Mail=?, long contact_num=?, String userId=?,\r\n" + 
		    		"String password=?, int salaray=?, String designation=?, String pmt_Address=?, String corresp_Address=?,\r\n" + 
		    		"String login_type=? where userId="+obj.getUserId();
		    PreparedStatement ps=con.prepareStatement(qry);
		    
		    ps.setString(1, obj.getF_name());
			ps.setString(2, obj.getL_name());
			ps.setString(3, obj.getGender());
			ps.setString(4, obj.getE_Mail());
			ps.setLong(5, obj.getContact_num());
			ps.setInt(6, obj.getUserId());
			ps.setString(7, obj.getPassword());
			ps.setInt(8, obj.getSalaray());
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

	public Staff_Admin getSADetbyId(int SA_id) throws ClassNotFoundException, SQLException{
	Staff_Admin obj=new Staff_Admin();
		try {
			ResourceBundle rb= ResourceBundle.getBundle("mysql");
		    String url=rb.getString("db.url");
		    String user=rb.getString("db.username");
		    String pass=rb.getString("db.password");
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection(url,user,pass);
		    String qry="Select * from Staff_Admin where userId="+SA_id;
		    Statement stmt=con.createStatement();
		    ResultSet rs=stmt.executeQuery(qry);
		    while(rs.next()) {
		    	String f_name=rs.getString(1);
		    	String l_name=rs.getString(1);
		    	String gender=rs.getString(1); 
		    	String e_Mail=rs.getString(1); 
		    	long contact_num=rs.getLong(1);
		    	int userId=rs.getInt(1);
				String password=rs.getString(1);
				int salaray=rs.getInt(1);
				String designation=rs.getString(1);
				String pmt_Address=rs.getString(1);
				String corresp_Address=rs.getString(1);
				String login_type=rs.getString(1);
				obj=new Staff_Admin(f_name, l_name, gender, e_Mail, contact_num, userId, password, salaray, designation, pmt_Address, corresp_Address, login_type);
		    }
		}catch(Exception E) {
			System.out.println("Exception E");
		}
	return obj;
	}
	
	public List<Staff_Admin> SA_ViewDet() throws ClassNotFoundException, SQLException{
		List<Staff_Admin> SA_View=new ArrayList<>();
		try {
		ResourceBundle rb= ResourceBundle.getBundle("mysql");
	    String url=rb.getString("db.url");
	    String user=rb.getString("db.username");
	    String pass=rb.getString("db.password");
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection(url,user,pass);
		String qry="Select * from Staff_Admin";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(qry);
			while(rs.next()) {
				String f_name=rs.getString(1);
		    	String l_name=rs.getString(1);
		    	String gender=rs.getString(1); 
		    	String e_Mail=rs.getString(1); 
		    	long contact_num=rs.getLong(1);
		    	int userId=rs.getInt(1);
				String password=rs.getString(1);
				int salaray=rs.getInt(1);
				String designation=rs.getString(1);
				String pmt_Address=rs.getString(1);
				String corresp_Address=rs.getString(1);
				String login_type=rs.getString(1);
				SA_View.add(new Staff_Admin(f_name, l_name, gender, e_Mail, contact_num, userId, password, salaray, designation, pmt_Address, corresp_Address, login_type));
				con.close();
			}		
		}catch(Exception E)
		{
			System.out.println("Exception : "+E);
		}
	return SA_View;	
	}
}