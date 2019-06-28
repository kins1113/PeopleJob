package com.ez.peoplejob.custext.model;

import java.sql.Timestamp;

public class custextVO {
	private int CUSTEXT_CODE;
	private String CUSTEXTCATEGORY;
	private String CUSTITLE;
	private String CUSCONTENT;
	private Timestamp CUS_REGDATE;
	private int MEMBER_CODE;
	public int getCUSTEXT_CODE() {
		return CUSTEXT_CODE;
	}
	public void setCUSTEXT_CODE(int cUSTEXT_CODE) {
		CUSTEXT_CODE = cUSTEXT_CODE;
	}
	public String getCUSTEXTCATEGORY() {
		return CUSTEXTCATEGORY;
	}
	public void setCUSTEXTCATEGORY(String cUSTEXTCATEGORY) {
		CUSTEXTCATEGORY = cUSTEXTCATEGORY;
	}
	public String getCUSTITLE() {
		return CUSTITLE;
	}
	public void setCUSTITLE(String cUSTITLE) {
		CUSTITLE = cUSTITLE;
	}
	public String getCUSCONTENT() {
		return CUSCONTENT;
	}
	public void setCUSCONTENT(String cUSCONTENT) {
		CUSCONTENT = cUSCONTENT;
	}
	public Timestamp getCUS_REGDATE() {
		return CUS_REGDATE;
	}
	public void setCUS_REGDATE(Timestamp cUS_REGDATE) {
		CUS_REGDATE = cUS_REGDATE;
	}
	public int getMEMBER_CODE() {
		return MEMBER_CODE;
	}
	public void setMEMBER_CODE(int mEMBER_CODE) {
		MEMBER_CODE = mEMBER_CODE;
	}
	@Override
	public String toString() {
		return "custextVO [CUSTEXT_CODE=" + CUSTEXT_CODE + ", CUSTEXTCATEGORY=" + CUSTEXTCATEGORY + ", CUSTITLE="
				+ CUSTITLE + ", CUSCONTENT=" + CUSCONTENT + ", CUS_REGDATE=" + CUS_REGDATE + ", MEMBER_CODE="
				+ MEMBER_CODE + "]";
	}
	
	
}
