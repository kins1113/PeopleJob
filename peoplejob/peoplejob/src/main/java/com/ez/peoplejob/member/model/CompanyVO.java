package com.ez.peoplejob.member.model;

public class CompanyVO {
	private int companyCode;
	private String companyname;
	private String businessNumber;
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
	
	public String getBusinessNumber() {
		return businessNumber;
	}
	public void setBusinessNumber(String businessNumber) {
		this.businessNumber = businessNumber;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "CompanyVO [companyCode=" + companyCode + ", companyname=" + companyname + ", businessNumber="
				+ businessNumber + ", image=" + image + "]";
	}
	
	
	
}
