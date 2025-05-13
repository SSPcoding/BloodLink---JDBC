package Pojo;

public class Seek {
	private String pname;
	private String pphone;
	private String pmail;
	private String paddress;
	private int age;
	private String pgender;
	private String pblood;
	private String prequire;
	private String pdisease;
	private String pcause;
	
	public Seek() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Seek(String pname, String pphone, String pmail, String paddress,int age,String pgender,String pblood,String prequire,String pdisease,String pcause) {
		super();
		this.pname = pname;
		this.pphone = pphone;
		this.pmail = pmail;
		this.paddress = paddress;
		this.age  = age;
		this.pgender  = pgender;
		this.pblood = pblood;
		this.prequire = prequire;
		this.pdisease = pdisease;
		this.pcause = pcause;
		
	}
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	
	public String getPphone() {
		return pphone;
	}
	public String setPphone(String pphone) {
		return this.pphone = pphone;
	}
	
	
	public String getPmail() {
		return pmail;
	}
	public void setPmail(String pmail) {
		this.pname = pmail;
	}


	
	
	
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

	public String getPgender() {
		return pgender;
	}
	public void setPgender(String pgender) {
		this.pgender = pgender;
	}
	
	
	public void setPblood(String pblood) {
		this.pblood = pblood;
	}
	public String getPblood() {
		return pblood;
	}

	public String getPrequire() {
		return prequire;
	}
	public void setPrequire(String prequire) {
		this.prequire = prequire;
	}
	
	
	public String getPdisease() {
		return pdisease;
	}

	public void setPdisease(String pdisease) {
		this.pdisease = pdisease;
	}
	
	
	public String getPcause() {
		return pcause;
	}
	public void setPcause(String pcause) {
		this.pcause = pcause;
	}
	

}
