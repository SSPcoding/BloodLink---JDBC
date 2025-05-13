package Pojo;

public class Donors {
	private String dname;
	private String dphone;
	private String dmail;
	private String daddress;
	private int dage;
	private String dblood_group;
	private String diseases;
	private String dsymptoms;
	
	public Donors() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Donors(String dname, String dphone, String dmail, String daddress,int dage,String dblood_group,String diseases,String dsymptoms) {
		super();
		this.dname = dname;
		this.dphone = dphone;
		this.dmail = dmail;
		this.dage  = dage;
		this.daddress = daddress;
		this.dblood_group = dblood_group;
		this.diseases = diseases;
		this.dsymptoms = dsymptoms;
		
	}
	
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	
	
	public String getDphone() {
		return dphone;
	}
	public String setDphone(String dphone) {
		return this.dphone = dphone;
	}
	
	
	public String getDmail() {
		return dmail;
	}
	public void setDmail(String dmail) {
		this.dname = dmail;
	}


	public int getDage() {
		return dage;
	}
	public void setDage(int dage) {
		this.dage = dage;
	}
	
	
	public String getDaddress() {
		return daddress;
	}
	public void setDaddress(String daddress) {
		this.daddress = daddress;
	}

	
	
	public void setDblood_group(String dblood_group) {
		this.dblood_group = dblood_group;
	}
	public String getDblood_group() {
		return dblood_group;
	}

	
	
	public String getDiseases() {
		return diseases;
	}

	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}
	
	
	public String getDsymptoms() {
		return dsymptoms;
	}
	public void setDsymptoms(String dsymptoms) {
		this.dsymptoms = dsymptoms;
	}
	

}