package review.model;

import java.sql.Date;

public class MyReview {
	private int rownum;
	private String i_img;
	private String i_name;
	private String r_content;
	private int r_star;
	private Date r_date;
	private String u_id;
	private int i_no;
	
	
	public MyReview(int rownum, String i_img, String i_name, String r_content, int r_star, Date r_date, String u_id,
			int i_no) {
		super();
		this.rownum = rownum;
		this.i_img = i_img;
		this.i_name = i_name;
		this.r_content = r_content;
		this.r_star = r_star;
		this.r_date = r_date;
		this.u_id = u_id;
		this.i_no = i_no;
	}
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public String getI_img() {
		return i_img;
	}
	public void setI_img(String i_img) {
		this.i_img = i_img;
	}
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public int getR_star() {
		return r_star;
	}
	public void setR_star(int r_star) {
		this.r_star = r_star;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	
	
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
	public int getI_no() {
		return i_no;
	}

	public void setI_no(int i_no) {
		this.i_no = i_no;
	}

	@Override
	public String toString() {
		return "MyReview [rownum=" + rownum + ", i_img=" + i_img + ", i_name=" + i_name + ", r_content=" + r_content
				+ ", r_star=" + r_star + ", r_date=" + r_date + ", u_id=" + u_id + ", i_no=" + i_no + "]";
	}
	
	
	
	
	
	
	
}
