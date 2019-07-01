package com.ez.peoplejob.tableaply.model;

import java.sql.Timestamp;

public class TableaplyVO {
	private int apply_code ;
	private Timestamp applydate;
	private String applylist;
	private String applycondition;
	private String oepncheck;
	private int member_code;
	private int jobopening;
	public int getApply_code() {
		return apply_code;
	}
	public void setApply_code(int apply_code) {
		this.apply_code = apply_code;
	}
	public Timestamp getApplydate() {
		return applydate;
	}
	public void setApplydate(Timestamp applydate) {
		this.applydate = applydate;
	}
	public String getApplylist() {
		return applylist;
	}
	public void setApplylist(String applylist) {
		this.applylist = applylist;
	}
	public String getApplycondition() {
		return applycondition;
	}
	public void setApplycondition(String applycondition) {
		this.applycondition = applycondition;
	}
	public String getOepncheck() {
		return oepncheck;
	}
	public void setOepncheck(String oepncheck) {
		this.oepncheck = oepncheck;
	}
	public int getMember_code() {
		return member_code;
	}
	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}
	public int getJobopening() {
		return jobopening;
	}
	public void setJobopening(int jobopening) {
		this.jobopening = jobopening;
	}
	@Override
	public String toString() {
		return "tableaplyVO [apply_code=" + apply_code + ", applydate=" + applydate + ", applylist=" + applylist
				+ ", applycondition=" + applycondition + ", oepncheck=" + oepncheck + ", member_code=" + member_code
				+ ", jobopening=" + jobopening + "]";
	}
	
	
	
}
