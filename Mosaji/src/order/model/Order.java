package order.model;

import java.sql.Date;

public class Order {

	private int o_no;
	private String u_id;
	private int i_no;
	private int o_qty;
	private int o_totalprice;
	private String o_address;
	private String o_payment;
	private Date o_date;
	public Order(int o_no, String u_id, int i_no, int o_qty, int o_totalprice, String o_address, String o_payment,
			Date o_date) {
		super();
		this.o_no = o_no;
		this.u_id = u_id;
		this.i_no = i_no;
		this.o_qty = o_qty;
		this.o_totalprice = o_totalprice;
		this.o_address = o_address;
		this.o_payment = o_payment;
		this.o_date = o_date;
	}
	public int getO_no() {
		return o_no;
	}
	public void setO_no(int o_no) {
		this.o_no = o_no;
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
	public int getO_qty() {
		return o_qty;
	}
	public void setO_qty(int o_qty) {
		this.o_qty = o_qty;
	}
	public int getO_totalprice() {
		return o_totalprice;
	}
	public void setO_totalprice(int o_totalprice) {
		this.o_totalprice = o_totalprice;
	}
	public String getO_address() {
		return o_address;
	}
	public void setO_address(String o_address) {
		this.o_address = o_address;
	}
	public String getO_payment() {
		return o_payment;
	}
	public void setO_payment(String o_payment) {
		this.o_payment = o_payment;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	@Override
	public String toString() {
		return "Order [o_no=" + o_no + ", u_id=" + u_id + ", i_no=" + i_no + ", o_qty=" + o_qty + ", o_totalprice="
				+ o_totalprice + ", o_address=" + o_address + ", o_payment=" + o_payment + ", o_date=" + o_date + "]";
	}
	
	
	
	
}
