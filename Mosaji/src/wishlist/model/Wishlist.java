package wishlist.model;

public class Wishlist {
	
	private int w_no;
	private int i_no;
	private String u_id;
	public Wishlist(int w_no, int i_no, String u_id) {
		super();
		this.w_no = w_no;
		this.i_no = i_no;
		this.u_id = u_id;
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
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	@Override
	public String toString() {
		return "Wishlist [w_no=" + w_no + ", i_no=" + i_no + ", u_id=" + u_id + "]";
	}
	
	
}
