package DAO;
import java.sql.SQLException;
import java.util.List;

import Model.Staff_Admin;

public interface Staff_AdminDAO {
	public void create_SADet(Staff_Admin obj)throws ClassNotFoundException, SQLException;
	public void Update_SADet(Staff_Admin obj) throws ClassNotFoundException, SQLException;
	public Staff_Admin getSADetbyId(int SA_id) throws ClassNotFoundException, SQLException;
	public List<Staff_Admin> SA_ViewDet() throws ClassNotFoundException, SQLException;
}
