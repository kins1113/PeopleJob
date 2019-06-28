package com.ez.peoplejob.resume.model;

import java.sql.Timestamp;

public class EducationVO {
	private int ACADIMIC_CODE; 
	private String SCHOOLNAME;    
	private String MAJOR;         
	private String DEGREE;        
	private Timestamp GRADUATE;     
	private String GRADUATECHECK;
	public int getACADIMIC_CODE() {
		return ACADIMIC_CODE;
	}
	public void setACADIMIC_CODE(int aCADIMIC_CODE) {
		ACADIMIC_CODE = aCADIMIC_CODE;
	}
	public String getSCHOOLNAME() {
		return SCHOOLNAME;
	}
	public void setSCHOOLNAME(String sCHOOLNAME) {
		SCHOOLNAME = sCHOOLNAME;
	}
	public String getMAJOR() {
		return MAJOR;
	}
	public void setMAJOR(String mAJOR) {
		MAJOR = mAJOR;
	}
	public String getDEGREE() {
		return DEGREE;
	}
	public void setDEGREE(String dEGREE) {
		DEGREE = dEGREE;
	}
	public Timestamp getGRADUATE() {
		return GRADUATE;
	}
	public void setGRADUATE(Timestamp gRADUATE) {
		GRADUATE = gRADUATE;
	}
	public String getGRADUATECHECK() {
		return GRADUATECHECK;
	}
	public void setGRADUATECHECK(String gRADUATECHECK) {
		GRADUATECHECK = gRADUATECHECK;
	}
	@Override
	public String toString() {
		return "EducationVO [ACADIMIC_CODE=" + ACADIMIC_CODE + ", SCHOOLNAME=" + SCHOOLNAME + ", MAJOR=" + MAJOR
				+ ", DEGREE=" + DEGREE + ", GRADUATE=" + GRADUATE + ", GRADUATECHECK=" + GRADUATECHECK + "]";
	} 
	
	
}
