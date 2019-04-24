package DAO;
import Model.ConnectionClass;
import Model.Staff_Admin;
import Model.User;
import java.util.*;
import java.sql.*;
public class UserDAOImpl implements UserDAO {

public int Create_UserDet(User u_obj) throws ClassNotFoundException, SQLException {
	int id=0;
	try { 
		Connection con = ConnectionClass.getConnection();
		String qry="Insert into User values(?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(qry);
		id=getCustomerId()+1;
		ps.setInt(1, id);
		ps.setString(2, u_obj.getF_name());
		ps.setString(3, u_obj.getL_name());
		ps.setString(4, u_obj.getGender());
		ps.setString(5, u_obj.getE_Mail());
		ps.setLong(6, u_obj.getContact_num());
		ps.setString(7, u_obj.getUserId());
		ps.setString(8, u_obj.getPassword());
		
		long count=ps.executeUpdate();
		System.out.println(count + " Row(s) Inserted");
		
		con.close();
	}
	catch(Exception E) {
		System.out.println("Error: "+E);
	}
	return id; 
}

public void Update_UserDet(User u_obj)  throws ClassNotFoundException, SQLException{
	try {
		Connection con = ConnectionClass.getConnection();
		    String qry="Update User set First Name=?,Last Name=?,Gender=?,Email=?,Contact Number=?,UserId=?,"
		    		+ "Password=? where UserId="+u_obj.getUserId();
		    PreparedStatement ps=con.prepareStatement(qry);
		    
			ps.setString(2, u_obj.getF_name());
			ps.setString(3, u_obj.getL_name());
			ps.setString(4, u_obj.getGender());
			ps.setString(5, u_obj.getE_Mail());
			ps.setLong(6, u_obj.getContact_num());
			ps.setString(7, u_obj.getUserId());
			ps.setString(8, u_obj.getPassword());
		    
		    long count=ps.executeUpdate();
		    System.out.println(count+" Row(s) Updated");
		    
		    con.close();
	}catch(Exception E) {
		System.out.println("Error: "+E);
	}
	
}

public User ViewUserbyId(String u_id) throws ClassNotFoundException, SQLException{
	User u_obj=new User();
	int flag=0;
	String qry=null;
	for(int i=0;i<u_id.length();i++) {
		if(u_id.charAt(i)=='@') {flag=1;
		System.out.println("Found");
		}
		}
	try {
		Connection con = ConnectionClass.getConnection();
		if(flag==0) {qry="Select * from User where UserId='"+u_id+"'";}
		else {qry="Select * from User where Email='"+u_id+"'";}
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
			u_obj=new User(f_name, l_name, gender, e_Mail, contact_num, userId, password);
			con.close();
			
			
		
		}
	}catch(Exception E) {
		System.out.println("Exception @ getting details"+E);
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
	
		String f_name=rs.getString(2); 
		String l_name=rs.getString(3); 
		String gender=rs.getString(4);
		String e_Mail=rs.getString(5);
		long contact_num=rs.getLong(6);
		String userId=rs.getString(7);
		String password=rs.getString(8);
		Users_View.add(new User(f_name, l_name, gender, e_Mail, contact_num, userId, password));
	}
	}catch(Exception E) {
		System.out.println("Exception : E");
	}
	
	return Users_View;
	}

@Override
public boolean checkLoginFieldbyuserId(String u_id, String pwd) {
	
		boolean resp=false;

		try{
			Connection con = ConnectionClass.getConnection();
		    String qry="Select UserId,Password from User where UserId='"+u_id+"'";
		    Statement stmt=con.createStatement();
		    ResultSet rs=stmt.executeQuery(qry);
		    rs.next();
		    String cu_id=rs.getString(1);
		    String cpwd=rs.getString(2);
		    
		    if(cu_id.equals(u_id) && cpwd.equals(pwd)) {
		    	resp=true;
		    	System.out.println("Success checkLoginFieldbyuserId "+ cu_id + " password= " + cpwd);
		    }
		    else resp=false;  
		}catch(Exception E) {
			System.out.println("Error checkLoginFieldbyuserId: "+E);
		}
	    return resp;
	
}

@Override
public boolean checkLoginFieldbyemail(String emailid, String pwd) {
	
	boolean resp=false;

	try{
		Connection con = ConnectionClass.getConnection();
	    String qry="Select Email,Password from User where Email='"+emailid+"'";
	    Statement stmt=con.createStatement();
	    ResultSet rs=stmt.executeQuery(qry);
	    rs.next();
	    String mail_id=rs.getString(1);
	    String cpwd=rs.getString(2);
	    
	    if(mail_id.equals(emailid) && cpwd.equals(pwd)) {
	    	System.out.println("Success checkLoginFieldbyemail "+ mail_id + " password= " + cpwd);
	    	resp=true;
	    }
	    else {
	    	resp=false;  
	    }
	}catch(Exception E) {
		System.out.println("Error checkLoginFieldbyemail : "+E);
	}
    return resp;

}
@Override
public int getCustomerId() {
	int id=0;
	try {
		Connection con = ConnectionClass.getConnection();
		String qry="Select Customer_Id from user";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(qry);
		rs.last();
		id=rs.getInt(1);
		if(id==0)id=32998820;
		}catch(Exception E) {
		System.out.println("Exception : "+E);
	}
return id;
}

@Override
public int getCustomerId(User obj) {
	int id=0;
	try {
		Connection con = ConnectionClass.getConnection();
		String qry="Select Customer_Id from user where UserId='"+obj.getUserId()+"'";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(qry);
		rs.next();
		id=rs.getInt(1);
	}catch(Exception E) {
		System.out.println("Exception : "+E);
	}
	return id;
}

public boolean validateidandmail(String u_id, String email) {
	boolean resp=false;
	try { boolean resp1=false,resp2=false;
		Connection con = ConnectionClass.getConnection();
		String qry="Select UserId  from user where UserId='"+u_id+"'";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(qry);
		if(rs.next()) resp1=true;
		rs.close();
		String qry1="Select Email  from user where Email='"+email+"'";
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

@Override
public boolean validatecustomerId(int id) {
	boolean resp=false;
		try {
		Connection con = ConnectionClass.getConnection();
		String qry="Select Customer_Id from user where Customer_Id="+id;
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(qry);
		rs.next();
		if(id==rs.getInt(1))resp=true;
	}catch(Exception E) {
		System.out.println("Exception : "+E);
	}
	return resp;
}


}