package com.ez.peoplejob.post.model;

public class Upload_infoVO {
	private int UPLOAD_CODE;      
	private String FILENAME;         
	private double FILESIZE;         
	private int DOWNCOUNT;       
	private String ORIGINALFILENAME; 
	private int BOARD_CODE2;
	public int getUPLOAD_CODE() {
		return UPLOAD_CODE;
	}
	public void setUPLOAD_CODE(int uPLOAD_CODE) {
		UPLOAD_CODE = uPLOAD_CODE;
	}
	public String getFILENAME() {
		return FILENAME;
	}
	public void setFILENAME(String fILENAME) {
		FILENAME = fILENAME;
	}
	public double getFILESIZE() {
		return FILESIZE;
	}
	public void setFILESIZE(double fILESIZE) {
		FILESIZE = fILESIZE;
	}
	public int getDOWNCOUNT() {
		return DOWNCOUNT;
	}
	public void setDOWNCOUNT(int dOWNCOUNT) {
		DOWNCOUNT = dOWNCOUNT;
	}
	public String getORIGINALFILENAME() {
		return ORIGINALFILENAME;
	}
	public void setORIGINALFILENAME(String oRIGINALFILENAME) {
		ORIGINALFILENAME = oRIGINALFILENAME;
	}
	public int getBOARD_CODE2() {
		return BOARD_CODE2;
	}
	public void setBOARD_CODE2(int bOARD_CODE2) {
		BOARD_CODE2 = bOARD_CODE2;
	}
	@Override
	public String toString() {
		return "Upload_infoVO [UPLOAD_CODE=" + UPLOAD_CODE + ", FILENAME=" + FILENAME + ", FILESIZE=" + FILESIZE
				+ ", DOWNCOUNT=" + DOWNCOUNT + ", ORIGINALFILENAME=" + ORIGINALFILENAME + ", BOARD_CODE2=" + BOARD_CODE2
				+ "]";
	}  
	
	
	
}
