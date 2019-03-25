package DAO;
import Model.Package;
import java.sql.SQLException;
import java.util.List;

public interface PackageDAO {
	public void create_Package(Package obj)throws SQLException,ClassNotFoundException;
	public void update_PackageDet(Package obj) throws SQLException, ClassNotFoundException;
	public Package getPackageById(int empid) throws SQLException, ClassNotFoundException;
	public List<Package> getAllPackages() throws SQLException,ClassNotFoundException;
}
