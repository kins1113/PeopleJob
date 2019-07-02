package com.ez.peoplejob.member.model;

import java.sql.Timestamp;

public class MemberVO {
	private String memberid;
	private Timestamp regdate;
	private String membername;
	private String zipcode;
	private String addrsess;
	private String addressdetail;
	private int memberCode;
	private Timestamp withdrawaldate;
	private String pwd;
	private String birth;
	private String membergender;
	private String email;
	private String picture;
	private String tel;
	private int companyCode;
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddrsess() {
		return addrsess;
	}
	public void setAddrsess(String addrsess) {
		this.addrsess = addrsess;
	}
	public String getAddressdetail() {
		return addressdetail;
	}
	public void setAddressdetail(String addressdetail) {
		this.addressdetail = addressdetail;
	}
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	public Timestamp getWithdrawaldate() {
		return withdrawaldate;
	}
	public void setWithdrawaldate(Timestamp withdrawaldate) {
		this.withdrawaldate = withdrawaldate;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getMembergender() {
		return membergender;
	}
	public void setMembergender(String membergender) {
		this.membergender = membergender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
	}
	@Override
	public String toString() {
		return "MemberVO [memberid=" + memberid + ", regdate=" + regdate + ", membername=" + membername + ", zipcode="
				+ zipcode + ", addrsess=" + addrsess + ", addressdetail=" + addressdetail + ", memberCode=" + memberCode
				+ ", withdrawaldate=" + withdrawaldate + ", pwd=" + pwd + ", birth=" + birth + ", membergender="
				+ membergender + ", email=" + email + ", picture=" + picture + ", tel=" + tel + ", companyCode="
				+ companyCode + "]";
	}
	
	

}
