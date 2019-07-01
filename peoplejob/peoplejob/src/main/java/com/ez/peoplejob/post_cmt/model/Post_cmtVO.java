package com.ez.peoplejob.post_cmt.model;

import java.sql.Timestamp;

public class Post_cmtVO {
	private int comment_code;
	private Timestamp board_date;
	private int arrayno;
	private int stepno;
	private String deletechekc;
	private int member_code;
	private int tboard_code2;
	private int groupno;
	public int getComment_code() {
		return comment_code;
	}
	public void setComment_code(int comment_code) {
		this.comment_code = comment_code;
	}
	public Timestamp getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Timestamp board_date) {
		this.board_date = board_date;
	}
	public int getArrayno() {
		return arrayno;
	}
	public void setArrayno(int arrayno) {
		this.arrayno = arrayno;
	}
	public int getStepno() {
		return stepno;
	}
	public void setStepno(int stepno) {
		this.stepno = stepno;
	}
	public String getDeletechekc() {
		return deletechekc;
	}
	public void setDeletechekc(String deletechekc) {
		this.deletechekc = deletechekc;
	}
	public int getMember_code() {
		return member_code;
	}
	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}
	public int getTboard_code2() {
		return tboard_code2;
	}
	public void setTboard_code2(int tboard_code2) {
		this.tboard_code2 = tboard_code2;
	}
	public int getGroupno() {
		return groupno;
	}
	public void setGroupno(int groupno) {
		this.groupno = groupno;
	}
	@Override
	public String toString() {
		return "post_cmtVO [comment_code=" + comment_code + ", board_date=" + board_date + ", arrayno=" + arrayno
				+ ", stepno=" + stepno + ", deletechekc=" + deletechekc + ", member_code=" + member_code
				+ ", tboard_code2=" + tboard_code2 + ", groupno=" + groupno + "]";
	}
	
	
	
}
