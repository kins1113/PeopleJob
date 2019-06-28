package com.ez.peoplejob.resume.model;

import java.sql.Timestamp;

public class Language_certificationVO {
	private int LANGLICENSE_CODE; 
	private String LANGLICENSENAME; 
	private Timestamp GETDATE;          
	private String INSTITUTE;
	
	
	
	public int getLANGLICENSE_CODE() {
		return LANGLICENSE_CODE;
	}



	public void setLANGLICENSE_CODE(int lANGLICENSE_CODE) {
		LANGLICENSE_CODE = lANGLICENSE_CODE;
	}



	public String getLANGLICENSENAME() {
		return LANGLICENSENAME;
	}



	public void setLANGLICENSENAME(String lANGLICENSENAME) {
		LANGLICENSENAME = lANGLICENSENAME;
	}



	public Timestamp getGETDATE() {
		return GETDATE;
	}



	public void setGETDATE(Timestamp gETDATE) {
		GETDATE = gETDATE;
	}



	public String getINSTITUTE() {
		return INSTITUTE;
	}



	public void setINSTITUTE(String iNSTITUTE) {
		INSTITUTE = iNSTITUTE;
	}



	@Override
	public String toString() {
		return "Language_certificationVO [LANGLICENSE_CODE=" + LANGLICENSE_CODE + ", LANGLICENSENAME=" + LANGLICENSENAME
				+ ", GETDATE=" + GETDATE + ", INSTITUTE=" + INSTITUTE + "]";
	}  
	
	
}
