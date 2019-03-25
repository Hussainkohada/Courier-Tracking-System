package DAO;
import Model.Package;
import java.sql.SQLException;

public interface PackageDAO {
	public void create_Package(Package obj)throws SQLException,ClassNotFoundException;
	
}
