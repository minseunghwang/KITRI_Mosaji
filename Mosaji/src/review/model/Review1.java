package review.model;

public class Review1 {
	private int r_no;
	private int u_age;
	private String u_skintype;
	private String u_gender;
	private int r_star;
	private String r_content;
	private String u_id;
	public Review1(int r_no, int u_age, String u_skintype, String u_gender, int r_star, String r_content, String u_id) {
		super();
		this.r_no = r_no;
		this.u_age = u_age;
		this.u_skintype = u_skintype;
		this.u_gender = u_gender;
		this.r_star = r_star;
		this.r_content = r_content;
		this.u_id = u_id;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getU_age() {
		return u_age;
	}
	public void setU_age(int u_age) {
		this.u_age = u_age;
	}
	public String getU_skintype() {
		return u_skintype;
	}
	public void setU_skintype(String u_skintype) {
		this.u_skintype = u_skintype;
	}
	public String getU_gender() {
		return u_gender;
	}
	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}
	public int getR_star() {
		return r_star;
	}
	public void setR_star(int r_star) {
		this.r_star = r_star;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	@Override
	public String toString() {
		return "Review1 [r_no=" + r_no + ", u_age=" + u_age + ", u_skintype=" + u_skintype + ", u_gender=" + u_gender
				+ ", r_star=" + r_star + ", r_content=" + r_content + ", u_id=" + u_id + "]";
	}
	
	
	
	
}
