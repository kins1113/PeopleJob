package com.ez.peoplejob.member.model;

public class CompanyVO {
	private int companyCode;
	private String companyname;
	private String bussinessNumber;
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
	
	public String getBussinessNumber() {
		return bussinessNumber;
	}
	public void setBussinessNumber(String bussinessNumber) {
		this.bussinessNumber = bussinessNumber;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "CompanyVO [companyCode=" + companyCode + ", companyname=" + companyname + ", bussinessNumber="
				+ bussinessNumber + ", image=" + image + "]";
	}
	
	
	
}
