package user.model;

public class User {

	private String u_id;
	private int u_no;
	private String u_pw;
	private String u_name;
	private int u_age;
	private String u_gender;
	private String u_skintype;
	private int u_like_item;
	
	
	
	
	
	
	
	public User(String u_id, String u_pw, String u_name, int u_age, String u_gender, String u_skintype) {
		super();
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_age = u_age;
		this.u_gender = u_gender;
		this.u_skintype = u_skintype;
	}



	public User(String u_id, String u_pw, String u_name, int u_age, String u_gender, String u_skintype, int u_like_item) {
		super();
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_age = u_age;
		this.u_gender = u_gender;
		this.u_skintype = u_skintype;
		this.u_like_item = u_like_item;
	}
	
	
	
	public User(String u_id, int u_no, String u_pw, String u_name, int u_age, String u_gender, String u_skintype,
			int u_like_item) {
		super();
		this.u_id = u_id;
		this.u_no = u_no;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_age = u_age;
		this.u_gender = u_gender;
		this.u_skintype = u_skintype;
		this.u_like_item = u_like_item;
	}



	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public int getU_age() {
		return u_age;
	}
	public void setU_age(int u_age) {
		this.u_age = u_age;
	}
	public String getU_gender() {
		return u_gender;
	}
	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	
	
	public String getU_skintype() {
		return u_skintype;
	}
	public void setU_skintype(String u_skintype) {
		this.u_skintype = u_skintype;
	}
	public int getU_like_item() {
		return u_like_item;
	}
	public void setU_like_item(int u_like_item) {
		this.u_like_item = u_like_item;
	}



	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_no=" + u_no + ", u_pw=" + u_pw + ", u_name=" + u_name + ", u_age=" + u_age
				+ ", u_gender=" + u_gender + ", u_skintype=" + u_skintype + ", u_like_item=" + u_like_item + "]";
	}
	
	
	
	
	
	
}
