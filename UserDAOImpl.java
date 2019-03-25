package DAO;
import Model.ConnectionClass;
import Model.User;
import java.util.*;
import java.sql.*;
public class UserDAOImpl implements UserDAO {

public void Create_UserDet(User u_obj) throws ClassNotFoundException, SQLException {
	try { 
		Connection con = ConnectionClass.getConnection();
		String qry="Insert into User values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(qry);
		
		ps.setString(1, u_obj.getF_name());
		ps.setString(2, u_obj.getL_name());
		ps.setString(3, u_obj.getGender());
		ps.setString(4, u_obj.getE_Mail());
		ps.setLong(5, u_obj.getContact_num());
		ps.setString(6, u_obj.getUserId());
		ps.setString(7, u_obj.getPassword());
		
		int count=ps.executeUpdate();
		System.out.println(count + " Row(s) Inserted");
		
		con.close();
	}
	catch(Exception E) {
		System.out.println("Error: "+E);
	}
}

public void Update_UserDet(User u_obj)  throws ClassNotFoundException, SQLException{
	try {
		Connection con = ConnectionClass.getConnection();
		    String qry="Update User set First Name=?,Last Name=?,Gender=?,Email=?,Contact Number=?,UserId=?,"
		    		+ "Password=? where UserId="+u_obj.getUserId();
		    PreparedStatement ps=con.prepareStatement(qry);
		    
			ps.setString(1, u_obj.getF_name());
			ps.setString(2, u_obj.getL_name());
			ps.setString(3, u_obj.getGender());
			ps.setString(4, u_obj.getE_Mail());
			ps.setLong(5, u_obj.getContact_num());
			ps.setString(6, u_obj.getUserId());
			ps.setString(7, u_obj.getPassword());
		    
		    int count=ps.executeUpdate();
		    System.out.println(count+" Row(s) Updated");
		    
		    con.close();
	}catch(Exception E) {
		System.out.println("Error: "+E);
	}
	
}

public User ViewUserbyId(int u_id) throws ClassNotFoundException, SQLException{
	User u_obj=new User();
	try {
		Connection con = ConnectionClass.getConnection();
		String qry="Select * from User where UserId="+u_id;
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(qry);
	
		while(rs.next()) {
			String f_name=rs.getString(1); 
			String l_name=rs.getString(2); 
			String gender=rs.getString(3);
			String e_Mail=rs.getString(4);
			long contact_num=rs.getLong(5);
			String userId=rs.getString(6);
			String password=rs.getString(7);
			u_obj=new User(f_name, l_name, gender, e_Mail, contact_num, userId, password);
			con.close();
			
			
		
		}
	}catch(Exception E) {
		System.out.println("Exception E");
	}
	
	return u_obj;

}

public List<User> ListAllUsers() throws ClassNotFoundException, SQLException{
	List<User> Users_View=new ArrayList<>(); 
	try{
		
		Connection con = ConnectionClass.getConnection();
	String qry="Select * from User";
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(qry);
	while(rs.next()) {
	
		String f_name=rs.getString(1); 
		String l_name=rs.getString(2); 
		String gender=rs.getString(3);
		String e_Mail=rs.getString(4);
		long contact_num=rs.getLong(5);
		String userId=rs.getString(6);
		String password=rs.getString(7);
		Users_View.add(new User(f_name, l_name, gender, e_Mail, contact_num, userId, password));
	}
	}catch(Exception E) {
		System.out.println("Exception : E");
	}
	
	return Users_View;
	}

}