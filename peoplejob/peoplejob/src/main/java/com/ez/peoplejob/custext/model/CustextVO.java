package com.ez.peoplejob.custext.model;

import java.sql.Timestamp;

public class CustextVO {
	private int custext_code;
	private String custextcategory;
	private String custitleCUSTITLE;
	private String cuscontent;
	private Timestamp cus_regdate;
	private int member_code;
	public int getCustext_code() {
		return custext_code;
	}
	public void setCustext_code(int custext_code) {
		this.custext_code = custext_code;
	}
	public String getCustextcategory() {
		return custextcategory;
	}
	public void setCustextcategory(String custextcategory) {
		this.custextcategory = custextcategory;
	}
	public String getCustitleCUSTITLE() {
		return custitleCUSTITLE;
	}
	public void setCustitleCUSTITLE(String custitleCUSTITLE) {
		this.custitleCUSTITLE = custitleCUSTITLE;
	}
	public String getCuscontent() {
		return cuscontent;
	}
	public void setCuscontent(String cuscontent) {
		this.cuscontent = cuscontent;
	}
	public Timestamp getCus_regdate() {
		return cus_regdate;
	}
	public void setCus_regdate(Timestamp cus_regdate) {
		this.cus_regdate = cus_regdate;
	}
	public int getMember_code() {
		return member_code;
	}
	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}
	@Override
	public String toString() {
		return "CustextVO [custext_code=" + custext_code + ", custextcategory=" + custextcategory
				+ ", custitleCUSTITLE=" + custitleCUSTITLE + ", cuscontent=" + cuscontent + ", cus_regdate="
				+ cus_regdate + ", member_code=" + member_code + "]";
	}
	
	
	
}
