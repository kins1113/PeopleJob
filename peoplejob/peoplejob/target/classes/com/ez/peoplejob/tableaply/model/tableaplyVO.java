package com.ez.peoplejob.tableaply.model;

import java.sql.Timestamp;

public class tableaplyVO {
	private int APPLY_CODE ;
	private Timestamp APPLYDATE;
	private String APPLYLIST;
	private String APPLYCONDITION;
	private String OPENCHECK;
	private int MEMBER_CODE;
	private int JOBOPENING;
	public int getAPPLY_CODE() {
		return APPLY_CODE;
	}
	public void setAPPLY_CODE(int aPPLY_CODE) {
		APPLY_CODE = aPPLY_CODE;
	}
	public Timestamp getAPPLYDATE() {
		return APPLYDATE;
	}
	public void setAPPLYDATE(Timestamp aPPLYDATE) {
		APPLYDATE = aPPLYDATE;
	}
	public String getAPPLYLIST() {
		return APPLYLIST;
	}
	public void setAPPLYLIST(String aPPLYLIST) {
		APPLYLIST = aPPLYLIST;
	}
	public String getAPPLYCONDITION() {
		return APPLYCONDITION;
	}
	public void setAPPLYCONDITION(String aPPLYCONDITION) {
		APPLYCONDITION = aPPLYCONDITION;
	}
	public String getOPENCHECK() {
		return OPENCHECK;
	}
	public void setOPENCHECK(String oPENCHECK) {
		OPENCHECK = oPENCHECK;
	}
	public int getMEMBER_CODE() {
		return MEMBER_CODE;
	}
	public void setMEMBER_CODE(int mEMBER_CODE) {
		MEMBER_CODE = mEMBER_CODE;
	}
	public int getJOBOPENING() {
		return JOBOPENING;
	}
	public void setJOBOPENING(int jOBOPENING) {
		JOBOPENING = jOBOPENING;
	}
	@Override
	public String toString() {
		return "tableaplyVO [APPLY_CODE=" + APPLY_CODE + ", APPLYDATE=" + APPLYDATE + ", APPLYLIST=" + APPLYLIST
				+ ", APPLYCONDITION=" + APPLYCONDITION + ", OPENCHECK=" + OPENCHECK + ", MEMBER_CODE=" + MEMBER_CODE
				+ ", JOBOPENING=" + JOBOPENING + "]";
	}
	
	
}
