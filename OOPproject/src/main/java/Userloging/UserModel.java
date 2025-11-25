package Userloging;

public class UserModel {
  
	private int id;
    private String Uname;
    private String Password;
    private String email;
    private String phone;
    private String fname;
    private String lname;
    private String address;
    private String user_type;
    
    public UserModel(int id, String uname, String password, String email, String phone, String fname, String lname,
			String address, String user_type) {
		this.id = id;
		Uname = uname;
		Password = password;
		this.email = email;
		this.phone = phone;
		this.fname = fname;
		this.lname = lname;
		this.address = address;
		this.user_type = user_type;
	}
    
    
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUname() {
		return Uname;
	}


	public void setUname(String uname) {
		Uname = uname;
	}


	public String getPassword() {
		return Password;
	}


	public void setPassword(String password) {
		Password = password;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getUser_type() {
		return user_type;
	}


	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}


	
    
}
