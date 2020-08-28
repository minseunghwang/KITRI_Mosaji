package item.model;
	
public class Item2 {
		
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
		private String i_img;
		
		public Item2(String i_name, String i_volume, String i_category1, String i_category2, String i_content,
				String i_brand, String i_gender, int i_age, String i_skintype, int i_price, String i_img) {
			super();
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
			this.i_img = i_img;
		}

		public String getI_name() {
			return i_name;
		}
		public void setI_name(String i_name) {
			this.i_name = i_name;
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
		public String getI_content() {
			return i_content;
		}
		public void setI_content(String i_content) {
			this.i_content = i_content;
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

		public String getI_img() {
			return i_img;
		}
		public void setI_img(String i_img) {
			this.i_img = i_img;
		}
		@Override
		public String toString() {
			return "Item2 [i_name=" + i_name + ", i_volume=" + i_volume + ", i_category1=" + i_category1
					+ ", i_category2=" + i_category2 + ", i_content=" + i_content + ", i_brand=" + i_brand + ", i_gender="
					+ i_gender + ", i_age=" + i_age + ", i_skintype=" + i_skintype + ", i_price=" + i_price + ", i_img=" + i_img + "]";
		}
	
}
