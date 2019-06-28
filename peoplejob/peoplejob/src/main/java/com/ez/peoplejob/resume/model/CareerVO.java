package com.ez.peoplejob.resume.model;

import java.sql.Timestamp;

public class CareerVO {
	private int DV_CODE;    
	private String COMPANYNAME; 
	private Timestamp WORKTERM;   
	private String CHARGEWORK;
	public int getDV_CODE() {
		return DV_CODE;
	}
	public void setDV_CODE(int dV_CODE) {
		DV_CODE = dV_CODE;
	}
	public String getCOMPANYNAME() {
		return COMPANYNAME;
	}
	public void setCOMPANYNAME(String cOMPANYNAME) {
		COMPANYNAME = cOMPANYNAME;
	}
	public Timestamp getWORKTERM() {
		return WORKTERM;
	}
	public void setWORKTERM(Timestamp wORKTERM) {
		WORKTERM = wORKTERM;
	}
	public String getCHARGEWORK() {
		return CHARGEWORK;
	}
	public void setCHARGEWORK(String cHARGEWORK) {
		CHARGEWORK = cHARGEWORK;
	}
	
	@Override
	public String toString() {
		return "CareerVO [DV_CODE=" + DV_CODE + ", COMPANYNAME=" + COMPANYNAME + ", WORKTERM=" + WORKTERM
				+ ", CHARGEWORK=" + CHARGEWORK + "]";
	}
	
	
}
