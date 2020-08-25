package wishlist.model;

public class Wishlist1 {
	private int rownum;
	private int w_no;
	private int i_no;
	private String i_name;
	private String i_content;
	private String i_img;
	private String u_id;
	public Wishlist1(int w_no, int i_no, String i_name, String i_content, String i_img, String u_id) {
		super();
		this.w_no = w_no;
		this.i_no = i_no;
		this.i_name = i_name;
		this.i_content = i_content;
		this.i_img = i_img;
		this.u_id = u_id;
	}
	
	
	public Wishlist1(int rownum, int i_no, String i_name, String i_content, String i_img) {
		super();
		this.rownum = rownum;
		this.i_no = i_no;
		this.i_name = i_name;
		this.i_content = i_content;
		this.i_img = i_img;
	}

	

	public int getRownum() {
		return rownum;
	}


	public void setRownum(int rownum) {
		this.rownum = rownum;
	}


	public int getW_no() {
		return w_no;
	}
	public void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public int getI_no() {
		return i_no;
	}
	public void setI_no(int i_no) {
		this.i_no = i_no;
	}
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}
	public String getI_content() {
		return i_content;
	}
	public void setI_content(String i_content) {
		this.i_content = i_content;
	}
	public String getI_img() {
		return i_img;
	}
	public void setI_img(String i_img) {
		this.i_img = i_img;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	@Override
	public String toString() {
		return "Wishlist1 [rownum=" + rownum + ", i_no=" + i_no + ", i_name=" + i_name + ", i_content=" + i_content
				+ ", i_img=" + i_img + "]";
	}
	
	
	
	
	
	
	
	
}
