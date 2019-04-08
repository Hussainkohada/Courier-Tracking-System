package DAO;
import Model.Package;
import java.sql.SQLException;
import java.util.List;

public interface PackageDAO {
	public void create_Package(Package obj)throws SQLException,ClassNotFoundException;
	public void update_PackageDet(Package obj) throws SQLException, ClassNotFoundException;
	
	public Package getPackageByConsignId(int consgnid) throws SQLException, ClassNotFoundException;
	public List<Package> getAllPackages() throws SQLException,ClassNotFoundException;
	public List<Package> getAllPackagesbyId(int custId) throws SQLException,ClassNotFoundException;
	public int getConsignId();
	public void update_StatusofPackage(String Status,int Consign_Id)throws SQLException,ClassNotFoundException;
	public int update_locationofPackage(String location,int Consign_id,String date)throws SQLException,ClassNotFoundException;
}
