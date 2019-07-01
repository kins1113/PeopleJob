package com.ez.peoplejob.cusanswer.model;

import java.sql.Timestamp;

public class CusanswerVO {
	private int answer_code;
	private int custext_code;
	private String answertitle;
	private String answercontent;
	private Timestamp answer_regdate;
	private int admin_code;
	public int getAnswer_code() {
		return answer_code;
	}
	public void setAnswer_code(int answer_code) {
		this.answer_code = answer_code;
	}
	public int getCustext_code() {
		return custext_code;
	}
	public void setCustext_code(int custext_code) {
		this.custext_code = custext_code;
	}
	public String getAnswertitle() {
		return answertitle;
	}
	public void setAnswertitle(String answertitle) {
		this.answertitle = answertitle;
	}
	public String getAnswercontent() {
		return answercontent;
	}
	public void setAnswercontent(String answercontent) {
		this.answercontent = answercontent;
	}
	public Timestamp getAnswer_regdate() {
		return answer_regdate;
	}
	public void setAnswer_regdate(Timestamp answer_regdate) {
		this.answer_regdate = answer_regdate;
	}
	public int getAdmin_code() {
		return admin_code;
	}
	public void setAdmin_code(int admin_code) {
		this.admin_code = admin_code;
	}
	@Override
	public String toString() {
		return "CusanswerVO [answer_code=" + answer_code + ", custext_code=" + custext_code + ", answertitle="
				+ answertitle + ", answercontent=" + answercontent + ", answer_regdate=" + answer_regdate
				+ ", admin_code=" + admin_code + "]";
	}
	
	
	
	
}
