package com.aunnie.web.dto;

import java.util.Date;

public class MemberDTO {
	private int member_no;
	private String id;
	private String pw;
	private String name;
	private String nickname;
	private String email;
	private String phone;
	private String address;
	private Date birthday;
	private Date regdate;
	private int mileage;
	private int total_price;
	private String degree;
	
	public MemberDTO() {
		super();
	}
	
	public MemberDTO(int member_no, String id, String pw, String name, String nickname, String email, String phone,
			String address, Date birthday, Date regdate, int mileage, int total_price, String degree) {
		super();
		this.member_no = member_no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.birthday = birthday;
		this.regdate = regdate;
		this.mileage = mileage;
		this.total_price = total_price;
		this.degree = degree;
	}
	
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	
	
}
