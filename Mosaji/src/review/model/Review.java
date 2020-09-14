package review.model;

import java.sql.Date;

public class Review {
	
	private int r_no;
	private String r_content;
	private Date r_date;
	private int r_star;
	private int i_no;
	private String u_id;
	private int rownum;
	private String i_name;
	
	
	
	public Review() {
		super();
	}
	
	
	
	
	
	
	






	public Review(int r_no, String r_content, Date r_date, int r_star, int i_no, String u_id, String i_name) {
		super();
		this.r_no = r_no;
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_star = r_star;
		this.i_no = i_no;
		this.u_id = u_id;
		this.i_name = i_name;
	}













	public Review(String r_content, Date r_date, int r_star, int i_no, String u_id, int rownum, String i_name,
			String i_img) {
		super();
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_star = r_star;
		this.i_no = i_no;
		this.u_id = u_id;
		this.rownum = rownum;
	}




	public Review(int r_no, String r_content, Date r_date, int r_star, int i_no, String u_id, int rownum) {
		super();
		this.r_no = r_no;
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_star = r_star;
		this.i_no = i_no;
		this.u_id = u_id;
		this.rownum = rownum;
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
	
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	





	public String getI_name() {
		return i_name;
	}






	public void setI_name(String i_name) {
		this.i_name = i_name;
	}






	@Override
	public String toString() {
		return "Review [r_no=" + r_no + ", r_content=" + r_content + ", r_date=" + r_date + ", r_star=" + r_star
				+ ", i_no=" + i_no + ", u_id=" + u_id + ", rownum=" + rownum + "]";
	}


	


	
	
	
	
	
	
	
	
	
}
