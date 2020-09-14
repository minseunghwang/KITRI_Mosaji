package wishlist.model;

public class Wishlist1 {
	private int w_no;
	private String u_id;
	private int i_no;
	private int i_no2;
	private String i_name;
	private String i_volume;
	private String i_category1;
	private String i_category2;
	private String i_content;
	private String i_brand;
	private String i_gender;
	private int i_age;
	private String i_skintype;
	private int i_price;
	private int i_star;
	private String i_img;
	private int rownum;
	
	
	
	public Wishlist1(int w_no, String u_id, int i_no, int i_no2, String i_name, String i_volume, String i_category1,
			String i_category2, String i_content, String i_brand, String i_gender, int i_age, String i_skintype,
			int i_price, int i_star, String i_img, int rownum) {
		super();
		this.w_no = w_no;
		this.u_id = u_id;
		this.i_no = i_no;
		this.i_no2 = i_no2;
		this.i_name = i_name;
		this.i_volume = i_volume;
		this.i_category1 = i_category1;
		this.i_category2 = i_category2;
		this.i_content = i_content;
		this.i_brand = i_brand;
		this.i_gender = i_gender;
		this.i_age = i_age;
		this.i_skintype = i_skintype;
		this.i_price = i_price;
		this.i_star = i_star;
		this.i_img = i_img;
		this.rownum = rownum;
	}

	public Wishlist1(int rownum, int w_no, int i_no, String i_name, String i_content, String i_img, String u_id) {
		super();
		this.rownum = rownum;
		this.w_no = w_no;
		this.i_no = i_no;
		this.i_name = i_name;
		this.i_content = i_content;
		this.i_img = i_img;
		this.u_id = u_id;
	}
	
	public Wishlist1(int rownum, int w_no, int i_no, String i_name, String i_content, String i_img, int i_price) {
		super();
		this.rownum = rownum;
		this.w_no = w_no;
		this.i_no = i_no;
		this.i_name = i_name;
		this.i_content = i_content;
		this.i_img = i_img;
		this.i_price = i_price;
	}
	
	
	public Wishlist1(int rownum, int i_no, String i_name, String i_content, String i_img) {
		super();
		this.rownum = rownum;
		this.i_no = i_no;
		this.i_name = i_name;
		this.i_content = i_content;
		this.i_img = i_img;
	}
	

	public Wishlist1(int i_no, String u_id) {
		super();
		this.i_no = i_no;
		this.u_id = u_id;
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
	public int getI_no2() {
		return i_no2;
	}

	public void setI_no2(int i_no2) {
		this.i_no2 = i_no2;
	}

	public String getI_volume() {
		return i_volume;
	}

	public void setI_volume(String i_volume) {
		this.i_volume = i_volume;
	}

	public String getI_category1() {
		return i_category1;
	}

	public void setI_category1(String i_category1) {
		this.i_category1 = i_category1;
	}

	public String getI_category2() {
		return i_category2;
	}

	public void setI_category2(String i_category2) {
		this.i_category2 = i_category2;
	}

	public String getI_brand() {
		return i_brand;
	}

	public void setI_brand(String i_brand) {
		this.i_brand = i_brand;
	}

	public String getI_gender() {
		return i_gender;
	}

	public void setI_gender(String i_gender) {
		this.i_gender = i_gender;
	}

	public int getI_age() {
		return i_age;
	}

	public void setI_age(int i_age) {
		this.i_age = i_age;
	}

	public String getI_skintype() {
		return i_skintype;
	}

	public void setI_skintype(String i_skintype) {
		this.i_skintype = i_skintype;
	}

	public int getI_price() {
		return i_price;
	}

	public void setI_price(int i_price) {
		this.i_price = i_price;
	}

	public int getI_star() {
		return i_star;
	}

	public void setI_star(int i_star) {
		this.i_star = i_star;
	}

	@Override
	public String toString() {
		return "Wishlist1 [w_no=" + w_no + ", u_id=" + u_id + ", i_no=" + i_no + ", i_no2=" + i_no2 + ", i_name="
				+ i_name + ", i_volume=" + i_volume + ", i_category1=" + i_category1 + ", i_category2=" + i_category2
				+ ", i_content=" + i_content + ", i_brand=" + i_brand + ", i_gender=" + i_gender + ", i_age=" + i_age
				+ ", i_skintype=" + i_skintype + ", i_price=" + i_price + ", i_star=" + i_star + ", i_img=" + i_img
				+ ", rownum=" + rownum + "]";
	}
}
