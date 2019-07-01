package com.ez.peoplejob.board.model;

import java.sql.Timestamp;

public class BoardVO {
	private int board_code1;
	private String fir_admin;
	private String boardname;
	private Timestamp boardregdate1;
	private Timestamp boardupdate;
	private String last_admin;
	private String board_order;
	private String usage;
	private String commentage;
	private String upage;
	private String upnumage;
	private int upsizeage;
	private int type_code;
	public int getBoard_code1() {
		return board_code1;
	}
	public void setBoard_code1(int board_code1) {
		this.board_code1 = board_code1;
	}
	public String getFir_admin() {
		return fir_admin;
	}
	public void setFir_admin(String fir_admin) {
		this.fir_admin = fir_admin;
	}
	public String getBoardname() {
		return boardname;
	}
	public void setBoardname(String boardname) {
		this.boardname = boardname;
	}
	public Timestamp getBoardregdate1() {
		return boardregdate1;
	}
	public void setBoardregdate1(Timestamp boardregdate1) {
		this.boardregdate1 = boardregdate1;
	}
	public Timestamp getBoardupdate() {
		return boardupdate;
	}
	public void setBoardupdate(Timestamp boardupdate) {
		this.boardupdate = boardupdate;
	}
	public String getLast_admin() {
		return last_admin;
	}
	public void setLast_admin(String last_admin) {
		this.last_admin = last_admin;
	}
	public String getBoard_order() {
		return board_order;
	}
	public void setBoard_order(String board_order) {
		this.board_order = board_order;
	}
	public String getUsage() {
		return usage;
	}
	public void setUsage(String usage) {
		this.usage = usage;
	}
	public String getCommentage() {
		return commentage;
	}
	public void setCommentage(String commentage) {
		this.commentage = commentage;
	}
	public String getUpage() {
		return upage;
	}
	public void setUpage(String upage) {
		this.upage = upage;
	}
	public String getUpnumage() {
		return upnumage;
	}
	public void setUpnumage(String upnumage) {
		this.upnumage = upnumage;
	}
	public int getUpsizeage() {
		return upsizeage;
	}
	public void setUpsizeage(int upsizeage) {
		this.upsizeage = upsizeage;
	}
	public int getType_code() {
		return type_code;
	}
	public void setType_code(int type_code) {
		this.type_code = type_code;
	}
	@Override
	public String toString() {
		return "boardVO [board_code1=" + board_code1 + ", fir_admin=" + fir_admin + ", boardname=" + boardname
				+ ", boardregdate1=" + boardregdate1 + ", boardupdate=" + boardupdate + ", last_admin=" + last_admin
				+ ", board_order=" + board_order + ", usage=" + usage + ", commentage=" + commentage + ", upage="
				+ upage + ", upnumage=" + upnumage + ", upsizeage=" + upsizeage + ", type_code=" + type_code + "]";
	}
	
}
