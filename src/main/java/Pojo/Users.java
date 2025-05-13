package Pojo;

public class Users {
	private String uname;
	private String umail;
	private String upass;
	
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Users(String uname, String umail, String upass) {
		super();
		this.uname = uname;
		this.umail = umail;
		this.upass = upass;
		
	}
	
	public String getUname() {
		return uname;
	}
	public void setDname(String uname) {
		this.uname = uname;
	}
	
	
	public String getUmail() {
		return umail;
	}
	public String setDphone(String umail) {
		return this.umail = umail;
	}
	
	
	public String getUpass() {
		return upass;
	}
	public void setDmail(String upass) {
		this.upass = upass;
	}
	

}