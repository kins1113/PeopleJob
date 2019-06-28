package com.ez.peoplejob.post.model;

import java.sql.Timestamp;

public class PostVO {
	private int boardCode2;				//게시글 코드
	private String boardtitle;			//제목
	private String boardcontent;		//내용
	private Timestamp boardregdate2;	//등록일
	private int boardhits;				//조회수
	private String deletecheck;			//삭제 여부
	private int memberCode;				//회원 코드
	private int boardCode; 				//게시판 코드
	private String boardcheck; 			//게시판 구분 코드 
	
	
	public int getBoardCode2() {
		return boardCode2;
	}
	public void setBoardCode2(int boardCode2) {
		this.boardCode2 = boardCode2;
	}
	public String getBoardtitle() {
		return boardtitle;
	}
	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}
	public String getBoardcontent() {
		return boardcontent;
	}
	public void setBoardcontent(String boardcontent) {
		this.boardcontent = boardcontent;
	}
	public Timestamp getBoardregdate2() {
		return boardregdate2;
	}
	public void setBoardregdate2(Timestamp boardregdate2) {
		this.boardregdate2 = boardregdate2;
	}
	public int getBoardhits() {
		return boardhits;
	}
	public void setBoardhits(int boardhits) {
		this.boardhits = boardhits;
	}
	public String getDeletecheck() {
		return deletecheck;
	}
	public void setDeletecheck(String deletecheck) {
		this.deletecheck = deletecheck;
	}
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	public int getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}
	public String getBoardcheck() {
		return boardcheck;
	}
	public void setBoardcheck(String boardcheck) {
		this.boardcheck = boardcheck;
	}
	@Override
	public String toString() {
		return "PostVO [boardCode2=" + boardCode2 + ", boardtitle=" + boardtitle + ", boardcontent=" + boardcontent
				+ ", boardregdate2=" + boardregdate2 + ", boardhits=" + boardhits + ", deletecheck=" + deletecheck
				+ ", memberCode=" + memberCode + ", boardCode=" + boardCode + ", boardcheck=" + boardcheck + "]";
	}
	
	
	
}
