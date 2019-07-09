package com.ez.peoplejob.member.model;

public class CompanyVO {
	private int companyCode;
	private String companyname;
	private String businessNumber;
	private String image;
	private String companyZipcode;
	private String companyAddress;
	private String companyAddressdetail;
	
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
	public String getCompanyZipcode() {
		return companyZipcode;
	}
	public void setCompanyZipcode(String companyZipcode) {
		this.companyZipcode = companyZipcode;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public String getCompanyAddressdetail() {
		return companyAddressdetail;
	}
	public void setCompanyAddressdetail(String companyAddressdetail) {
		this.companyAddressdetail = companyAddressdetail;
	}
	@Override
	public String toString() {
		return "CompanyVO [companyCode=" + companyCode + ", companyname=" + companyname + ", businessNumber="
				+ businessNumber + ", image=" + image + ", companyZipcode=" + companyZipcode + ", companyAddress="
				+ companyAddress + ", companyAddressdetail=" + companyAddressdetail + "]";
	}
	

	
	
}
