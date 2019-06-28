package com.ez.peoplejob.cusanswer.model;

import java.sql.Timestamp;

public class cusanswerVO {
	private int ANSWER_CODE;
	private int CUSTEXT_CODE;
	private String ANSWERTITLE;
	private String ANSWERCONTENT;
	private Timestamp ANSWER_REGDATE;
	private int ADMIN_CODE;
	public int getANSWER_CODE() {
		return ANSWER_CODE;
	}
	public void setANSWER_CODE(int aNSWER_CODE) {
		ANSWER_CODE = aNSWER_CODE;
	}
	public int getCUSTEXT_CODE() {
		return CUSTEXT_CODE;
	}
	public void setCUSTEXT_CODE(int cUSTEXT_CODE) {
		CUSTEXT_CODE = cUSTEXT_CODE;
	}
	public String getANSWERTITLE() {
		return ANSWERTITLE;
	}
	public void setANSWERTITLE(String aNSWERTITLE) {
		ANSWERTITLE = aNSWERTITLE;
	}
	public String getANSWERCONTENT() {
		return ANSWERCONTENT;
	}
	public void setANSWERCONTENT(String aNSWERCONTENT) {
		ANSWERCONTENT = aNSWERCONTENT;
	}
	public Timestamp getANSWER_REGDATE() {
		return ANSWER_REGDATE;
	}
	public void setANSWER_REGDATE(Timestamp aNSWER_REGDATE) {
		ANSWER_REGDATE = aNSWER_REGDATE;
	}
	public int getADMIN_CODE() {
		return ADMIN_CODE;
	}
	public void setADMIN_CODE(int aDMIN_CODE) {
		ADMIN_CODE = aDMIN_CODE;
	}
	@Override
	public String toString() {
		return "cusanswerVO [ANSWER_CODE=" + ANSWER_CODE + ", CUSTEXT_CODE=" + CUSTEXT_CODE + ", ANSWERTITLE="
				+ ANSWERTITLE + ", ANSWERCONTENT=" + ANSWERCONTENT + ", ANSWER_REGDATE=" + ANSWER_REGDATE
				+ ", ADMIN_CODE=" + ADMIN_CODE + "]";
	}
	
	
}
