package wishlist.model;

public class WishlistDuplication {
	
	
	private int duplicationCheck;
	private String u_id;
	private int i_no;
	public WishlistDuplication(int duplicationCheck, String u_id, int i_no) {
		super();
		this.duplicationCheck = duplicationCheck;
		this.u_id = u_id;
		this.i_no = i_no;
	}
	public int getDuplicationCheck() {
		return duplicationCheck;
	}
	public void setDuplicationCheck(int duplicationCheck) {
		this.duplicationCheck = duplicationCheck;
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
		return "WishlistDuplication [duplicationCheck=" + duplicationCheck + ", u_id=" + u_id + ", i_no=" + i_no + "]";
	}
	
	
	
	
	
}
