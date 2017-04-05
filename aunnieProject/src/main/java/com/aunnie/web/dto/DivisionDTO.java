package com.aunnie.web.dto;

public class DivisionDTO {
	private int division_no;
	private String division_name;
	private int category_no;
	private int coupon_no;
	
	public DivisionDTO() {
		super();
	}
	public DivisionDTO(int division_no, String division_name, int category_no, int coupon_no) {
		super();
		this.division_no = division_no;
		this.division_name = division_name;
		this.category_no = category_no;
		this.coupon_no = coupon_no;
	}
	public int getDivision_no() {
		return division_no;
	}
	public void setDivision_no(int division_no) {
		this.division_no = division_no;
	}
	public String getDivision_name() {
		return division_name;
	}
	public void setDivision_name(String division_name) {
		this.division_name = division_name;
	}
	public int getCategory_no() {
		return category_no;
	}
	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}
	public int getCoupon_no() {
		return coupon_no;
	}
	public void setCoupon_no(int coupon_no) {
		this.coupon_no = coupon_no;
	}
	
	
}
