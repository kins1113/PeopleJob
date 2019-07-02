package com.ez.peoplejob.member.model;

public class CompanyVO {
	private int companyCode;
	private String companyname;
	private String companyno;
	private String image;
	public int getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCompanyno() {
		return companyno;
	}
	public void setCompanyno(String companyno) {
		this.companyno = companyno;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "CompanyVO [companyCode=" + companyCode + ", companyname=" + companyname + ", companyno=" + companyno
				+ ", image=" + image + "]";
	}
	
	
}
