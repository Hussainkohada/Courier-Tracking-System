package Model;

public class Staff_Admin {
	
	private String F_name;
	private String L_name;
	private String Gender;
	private String E_Mail;
	private long Contact_num;
	private String userId;
	private String Password;
	private int Salary;
	private String Designation;
	private String Pmt_Address;
	private String Corresp_Address;
	private String Login_type;
	public String getF_name() {
		return F_name;
	}
	public void setF_name(String f_name) {
		F_name = f_name;
	}
	public String getL_name() {
		return L_name;
	}
	public void setL_name(String l_name) {
		L_name = l_name;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getE_Mail() {
		return E_Mail;
	}
	public void setE_Mail(String e_Mail) {
		E_Mail = e_Mail;
	}
	public long getContact_num() {
		return Contact_num;
	}
	public void setContact_num(long contact_num) {
		Contact_num = contact_num;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public int getSalary() {
		return Salary;
	}
	public void setSalary(int salaray) {
		Salary = salaray;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	public String getPmt_Address() {
		return Pmt_Address;
	}
	public void setPmt_Address(String pmt_Address) {
		Pmt_Address = pmt_Address;
	}
	public String getCorresp_Address() {
		return Corresp_Address;
	}
	public void setCorresp_Address(String corresp_Address) {
		Corresp_Address = corresp_Address;
	}
	public String getLogin_type() {
		return Login_type;
	}
	public void setLogin_type(String login_type) {
		Login_type = login_type;
	}
	public Staff_Admin(String f_name, String l_name, String gender, String e_Mail, long contact_num, String userId,
			String password, int salary, String designation, String pmt_Address, String corresp_Address,
			String login_type) {
		super();
		F_name = f_name;
		L_name = l_name;
		Gender = gender;
		E_Mail = e_Mail;
		Contact_num = contact_num;
		this.userId = userId;
		Password = password;
		Salary = salary;
		Designation = designation;
		Pmt_Address = pmt_Address;
		Corresp_Address = corresp_Address;
		Login_type = login_type;
	}
	public Staff_Admin() {}
	
}
