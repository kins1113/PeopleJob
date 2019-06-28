package com.ez.peoplejob.hopecompany.model;

public class LocationVO {
	private int LOCAL_CODE; 
	private String SIDO;      
	private String GUGUN;
	public int getLOCAL_CODE() {
		return LOCAL_CODE;
	}
	public void setLOCAL_CODE(int lOCAL_CODE) {
		LOCAL_CODE = lOCAL_CODE;
	}
	public String getSIDO() {
		return SIDO;
	}
	public void setSIDO(String sIDO) {
		SIDO = sIDO;
	}
	public String getGUGUN() {
		return GUGUN;
	}
	public void setGUGUN(String gUGUN) {
		GUGUN = gUGUN;
	}
	@Override
	public String toString() {
		return "LocationVO [LOCAL_CODE=" + LOCAL_CODE + ", SIDO=" + SIDO + ", GUGUN=" + GUGUN + "]";
	} 
	
	
}
