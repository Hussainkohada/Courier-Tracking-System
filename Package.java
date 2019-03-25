package Model;
import java.sql.Date;
public class Package {
private int Consign_id;
private Date Accept_date;
private float Pack_Weight;
private float Cost;
private String Sender_addr;
private String Receiver_addr;
private int Emp_id ;
private int User_id;
private String Curr_loc;
private String Pack_status;
public int getConsign_id() {
	return Consign_id;
}
public void setConsign_id(int consign_id) {
	Consign_id = consign_id;
}
public Date getAccept_date() {
	return Accept_date;
}
public void setAccept_date(Date accept_date) {
	Accept_date = accept_date;
}
public float getPack_Weight() {
	return Pack_Weight;
}
public void setPack_Weight(float pack_Weight) {
	Pack_Weight = pack_Weight;
}
public float getCost() {
	return Cost;
}
public void setCost(float cost) {
	Cost = cost;
}
public String getSender_addr() {
	return Sender_addr;
}
public void setSender_addr(String sender_addr) {
	Sender_addr = sender_addr;
}
public String getReceiver_addr() {
	return Receiver_addr;
}
public void setReceiver_addr(String receiver_addr) {
	Receiver_addr = receiver_addr;
}
public int getEmp_id() {
	return Emp_id;
}
public void setEmp_id(int emp_id) {
	Emp_id = emp_id;
}
public int getUser_id() {
	return User_id;
}
public void setUser_id(int user_id) {
	User_id = user_id;
}
public String getCurr_loc() {
	return Curr_loc;
}
public void setCurr_loc(String curr_loc) {
	Curr_loc = curr_loc;
}
public String getPack_status() {
	return Pack_status;
}
public void setPack_status(String pack_status) {
	Pack_status = pack_status;
}
public Package(int consign_id, Date accept_date, float pack_Weight, float cost, String sender_addr,
		String receiver_addr, int emp_id, int user_id, String curr_loc, String pack_status) {
	super();
	Consign_id = consign_id;
	Accept_date = accept_date;
	Pack_Weight = pack_Weight;
	Cost = cost;
	Sender_addr = sender_addr;
	Receiver_addr = receiver_addr;
	Emp_id = emp_id;
	User_id = user_id;
	Curr_loc = curr_loc;
	Pack_status = pack_status;
}
public Package() {}
}
