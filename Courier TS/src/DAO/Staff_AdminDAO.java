package DAO;
import java.lang.*;
import java.sql.SQLException;
import java.util.List;

import Model.Staff_Admin;

public interface Staff_AdminDAO {
	public void create_SADet(Staff_Admin obj)throws ClassNotFoundException, SQLException;
	public void Update_SADet(Staff_Admin obj,int emp_id) throws ClassNotFoundException, SQLException;
	public Staff_Admin getSADetbyId(String SA_id) throws ClassNotFoundException, SQLException;
	public Staff_Admin getSADetbyEmailId(String email_id) throws ClassNotFoundException, SQLException;
	public int getEmployeeId(Staff_Admin obj);
	public void deleteStaff(String u_id);
	public List<Staff_Admin> SA_ViewDet() throws ClassNotFoundException, SQLException;
	public boolean checkLoginFieldbyUserID(String u_id,String pwd);
	public boolean validateidandmail(String u_id,String email);
	public boolean checkLoginFieldbyEmailID(String mail_id,String pwd);
	public int getEmployeeId();
	
}
