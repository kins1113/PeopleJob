package com.ez.peoplejob.board.model;

import java.sql.Timestamp;

public class boardVO {
	private int BOARD_CODE1;
	private String FIR_ADMIN;
	private String BOARDNAME;
	private Timestamp BOARDREGDATE1;
	private Timestamp BOARDUPDATE;
	private String LAST_ADMIN;
	private String BOARD_ORDER;
	private String USAGE;
	private String COMMENTAGE;
	private String UPAGE ;
	private String UPNUMAGE;
	private int UPSIZEAGE;
	private int TYPE_CODE ;
	public int getBOARD_CODE1() {
		return BOARD_CODE1;
	}
	public void setBOARD_CODE1(int bOARD_CODE1) {
		BOARD_CODE1 = bOARD_CODE1;
	}
	public String getFIR_ADMIN() {
		return FIR_ADMIN;
	}
	public void setFIR_ADMIN(String fIR_ADMIN) {
		FIR_ADMIN = fIR_ADMIN;
	}
	public String getBOARDNAME() {
		return BOARDNAME;
	}
	public void setBOARDNAME(String bOARDNAME) {
		BOARDNAME = bOARDNAME;
	}
	public Timestamp getBOARDREGDATE1() {
		return BOARDREGDATE1;
	}
	public void setBOARDREGDATE1(Timestamp bOARDREGDATE1) {
		BOARDREGDATE1 = bOARDREGDATE1;
	}
	public Timestamp getBOARDUPDATE() {
		return BOARDUPDATE;
	}
	public void setBOARDUPDATE(Timestamp bOARDUPDATE) {
		BOARDUPDATE = bOARDUPDATE;
	}
	public String getLAST_ADMIN() {
		return LAST_ADMIN;
	}
	public void setLAST_ADMIN(String lAST_ADMIN) {
		LAST_ADMIN = lAST_ADMIN;
	}
	public String getBOARD_ORDER() {
		return BOARD_ORDER;
	}
	public void setBOARD_ORDER(String bOARD_ORDER) {
		BOARD_ORDER = bOARD_ORDER;
	}
	public String getUSAGE() {
		return USAGE;
	}
	public void setUSAGE(String uSAGE) {
		USAGE = uSAGE;
	}
	public String getCOMMENTAGE() {
		return COMMENTAGE;
	}
	public void setCOMMENTAGE(String cOMMENTAGE) {
		COMMENTAGE = cOMMENTAGE;
	}
	public String getUPAGE() {
		return UPAGE;
	}
	public void setUPAGE(String uPAGE) {
		UPAGE = uPAGE;
	}
	public String getUPNUMAGE() {
		return UPNUMAGE;
	}
	public void setUPNUMAGE(String uPNUMAGE) {
		UPNUMAGE = uPNUMAGE;
	}
	public int getUPSIZEAGE() {
		return UPSIZEAGE;
	}
	public void setUPSIZEAGE(int uPSIZEAGE) {
		UPSIZEAGE = uPSIZEAGE;
	}
	public int getTYPE_CODE() {
		return TYPE_CODE;
	}
	public void setTYPE_CODE(int tYPE_CODE) {
		TYPE_CODE = tYPE_CODE;
	}
	@Override
	public String toString() {
		return "boardVO [BOARD_CODE1=" + BOARD_CODE1 + ", FIR_ADMIN=" + FIR_ADMIN + ", BOARDNAME=" + BOARDNAME
				+ ", BOARDREGDATE1=" + BOARDREGDATE1 + ", BOARDUPDATE=" + BOARDUPDATE + ", LAST_ADMIN=" + LAST_ADMIN
				+ ", BOARD_ORDER=" + BOARD_ORDER + ", USAGE=" + USAGE + ", COMMENTAGE=" + COMMENTAGE + ", UPAGE="
				+ UPAGE + ", UPNUMAGE=" + UPNUMAGE + ", UPSIZEAGE=" + UPSIZEAGE + ", TYPE_CODE=" + TYPE_CODE + "]";
	}
	
	
}
