package com.aunnie.web.dto;

public class SectionDTO {
	private int section_no;
	private String section_name;
	private int division_no;
	private int coupon_no;
	
	public SectionDTO() {
		super();
	}
	public SectionDTO(int section_no, String section_name, int division_no, int coupon_no) {
		super();
		this.section_no = section_no;
		this.section_name = section_name;
		this.division_no = division_no;
		this.coupon_no = coupon_no;
	}
	public int getSection_no() {
		return section_no;
	}
	public void setSection_no(int section_no) {
		this.section_no = section_no;
	}
	public String getSection_name() {
		return section_name;
	}
	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}
	public int getDivision_no() {
		return division_no;
	}
	public void setDivision_no(int division_no) {
		this.division_no = division_no;
	}
	public int getCoupon_no() {
		return coupon_no;
	}
	public void setCoupon_no(int coupon_no) {
		this.coupon_no = coupon_no;
	}
	
	
}
