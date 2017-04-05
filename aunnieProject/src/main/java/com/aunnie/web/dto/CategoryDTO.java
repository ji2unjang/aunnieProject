package com.aunnie.web.dto;

public class CategoryDTO {
	private int category_no;
	private String category_name;
	private int coupon_no;
	
	public CategoryDTO() {
		super();
	}
	public CategoryDTO(int category_no, String category_name, int coupon_no) {
		super();
		this.category_no = category_no;
		this.category_name = category_name;
		this.coupon_no = coupon_no;
	}
	public int getCategory_no() {
		return category_no;
	}
	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public int getCoupon_no() {
		return coupon_no;
	}
	public void setCoupon_no(int coupon_no) {
		this.coupon_no = coupon_no;
	}
	
	
}
