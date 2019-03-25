package DAO;
import Model.User;
import java.sql.SQLException;
import java.util.List;

public interface UserDAO {

	
	public void Create_UserDet(User u_obj) throws ClassNotFoundException, SQLException;
	public void Update_UserDet(User u_obj) throws ClassNotFoundException, SQLException;
	public User ViewUserbyId(int u_id) throws ClassNotFoundException, SQLException;
	public List<User> ListAllUsers() throws ClassNotFoundException, SQLException;
}
