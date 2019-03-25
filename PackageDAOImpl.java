package DAO;
import java.util.*;
import java.sql.*;
import java.sql.Date;

import Model.ConnectionClass;
import Model.Package;

public class PackageDAOImpl implements PackageDAO {
	
	public void create_Package(Package obj) throws SQLException, ClassNotFoundException {
		
		try {
			Connection con = ConnectionClass.getConnection();
	    String qry="Insert into Package values(?,?,?,?,?,?,?,?,?,?)";
	    PreparedStatement ps=con.prepareStatement(qry);
	    
	    ps.setInt(1,obj.getConsign_id());
	    ps.setDate(2, obj.getAccept_date());
	    ps.setFloat(3, obj.getPack_Weight());
	    ps.setFloat(4, obj.getCost());
	    ps.setString(5, obj.getSender_addr());
	    ps.setString(6, obj.getReceiver_addr());
	    ps.setInt(7, obj.getEmp_id());
	    ps.setInt(8, obj.getUser_id());
		ps.setString(9, obj.getCurr_loc());
		ps.setString(10, obj.getPack_status());
		
		int count=ps.executeUpdate();
		System.out.println(count+" Row(s) Inserted");
		con.close();		
		}catch(Exception E) {
		System.out.println("Exception : "+E);
	}
		}
		
	public void update_PackageDet(Package obj) throws SQLException, ClassNotFoundException {
		
			try {
				Connection con = ConnectionClass.getConnection();
			    String qry="Update set Package Consignment_id=?,Accept Date=?,Package Weight=?,Cost=?,Sender Address=?,Receiver Address=?,"
			    		+ "Employee_id=?,Customer_id=?,Current Location=?,Package Status=? where Employee_id="+obj.getEmp_id();
				PreparedStatement ps=con.prepareStatement(qry);
				
				ps.setInt(1,obj.getConsign_id());
			    ps.setDate(2, obj.getAccept_date());
			    ps.setFloat(3, obj.getPack_Weight());
			    ps.setFloat(4, obj.getCost());
			    ps.setString(5, obj.getSender_addr());
			    ps.setString(6, obj.getReceiver_addr());
			    ps.setInt(7, obj.getEmp_id());
			    ps.setInt(8, obj.getUser_id());
				ps.setString(9, obj.getCurr_loc());
				ps.setString(10, obj.getPack_status());
				
				int count=ps.executeUpdate();
				System.out.println(count+" Row(s) Updated");
			}catch(Exception E) {
				System.out.println("Exception : "+E);
			}
		}
		
	public Package getPackageById(int empid) throws SQLException, ClassNotFoundException{
			Package obj=new Package();
			try {
				Connection con = ConnectionClass.getConnection();
			    String qry="Select * from Package where Employee_id="+empid;
			    Statement stmt=con.createStatement();
			    ResultSet rs=stmt.executeQuery(qry);
			    while(rs.next()) {
			    	int consign_id=rs.getInt(1);
			    	Date accept_date=rs.getDate(2);
			    	float pack_Weight=rs.getFloat(3); 
			    	float cost=rs.getFloat(4);
			    	String sender_addr=rs.getString(5);
					String receiver_addr=rs.getString(6);
					int emp_id=rs.getInt(7);
					int user_id=rs.getInt(8);
					String curr_loc=rs.getString(9);
					String pack_status=rs.getString(10);
					obj=new Package(consign_id, accept_date, pack_Weight, cost, sender_addr, receiver_addr, emp_id, user_id, curr_loc, pack_status);
			    }
			}catch(Exception E){
				System.out.println("Exception : "+E);
			}
		
			return obj;
		}
		
	public List<Package> getAllPackages() throws SQLException,ClassNotFoundException{
			List<Package> pack_List=new ArrayList<>();
			try {
				Connection con = ConnectionClass.getConnection();
				String qry="Select * from Package";
				Statement stmt=con.createStatement();
				ResultSet rs=stmt.executeQuery(qry);
				while(rs.next()) {
		    	int consign_id=rs.getInt(1);
		    	Date accept_date=rs.getDate(2);
		    	float pack_Weight=rs.getFloat(3); 
		    	float cost=rs.getFloat(4);
		    	String sender_addr=rs.getString(5);
				String receiver_addr=rs.getString(6);
				int emp_id=rs.getInt(7);
				int user_id=rs.getInt(8);
				String curr_loc=rs.getString(9);
				String pack_status=rs.getString(10);
				pack_List.add(new Package(consign_id, accept_date, pack_Weight, cost, sender_addr, receiver_addr, emp_id, user_id, curr_loc, pack_status));
		    }
			}catch(Exception E) {
				System.out.println("Exception : "+E);
			}								
			return pack_List;
		}
}