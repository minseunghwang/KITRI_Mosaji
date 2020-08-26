package wishlist.model;

public class Wishlist {
	
	private int w_no;
	private String u_id;
	private int i_no;
	
	
	public Wishlist(int w_no,  String u_id, int i_no) {
		super();
		this.w_no = w_no;
		this.u_id = u_id;
		this.i_no = i_no;
		
	}
	public int getW_no() {
		return w_no;
	}
	public void setW_no(int w_no) {
		this.w_no = w_no;
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
		return "Wishlist [w_no=" + w_no + ", u_id=" + u_id + ", i_no=" + i_no + "]";
	}
	
	
	
	
}
