package DAO;
import Model.User;
import java.sql.SQLException;
import java.util.List;

public interface UserDAO {

	
	public void Create_UserDet(User u_obj) throws ClassNotFoundException, SQLException;
	public void Update_UserDet(User u_obj) throws ClassNotFoundException, SQLException;
	public User ViewUserbyId(String u_id) throws ClassNotFoundException, SQLException;
	public List<User> ListAllUsers() throws ClassNotFoundException, SQLException;
	public boolean checkLoginFieldbyuserId(String emailid,String pwd);
	public boolean checkLoginFieldbyemail(String u_id,String pwd);
	public int getCustomerId();
	public int getCustomerId(User obj);
}
