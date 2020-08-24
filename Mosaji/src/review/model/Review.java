package review.model;

import java.sql.Date;

public class Review {
	
	private int r_no;
	private String r_content;
	private Date r_date;
	private int r_star;
	private int i_no;
	private String u_id;
	public Review(int r_no, String r_content, Date r_date, int r_star, int i_no, String u_id) {
		super();
		this.r_no = r_no;
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_star = r_star;
		this.i_no = i_no;
		this.u_id = u_id;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	public int getR_star() {
		return r_star;
	}
	public void setR_star(int r_star) {
		this.r_star = r_star;
	}
	public int getI_no() {
		return i_no;
	}
	public void setI_no(int i_no) {
		this.i_no = i_no;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	@Override
	public String toString() {
		return "Review [r_no=" + r_no + ", r_content=" + r_content + ", r_date=" + r_date + ", r_star=" + r_star
				+ ", i_no=" + i_no + ", u_id=" + u_id + "]";
	}
	
	
	
	
	
}
