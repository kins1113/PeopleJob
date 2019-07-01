package com.ez.peoplejob.resume.model;

import java.sql.Timestamp;

public class ResumeVO {
	private int resume_code;
	private String resumetitle;
	private Timestamp resumeregdate;
	private String introduce;
	private String award;
	private int langlicence_code;
	private int licence_code;
	private int dv_code;
	private int academic_code;
	private int desiredwork_code;
	private String openchekc;
	private int member_code;
	public int getResume_code() {
		return resume_code;
	}
	public void setResume_code(int resume_code) {
		this.resume_code = resume_code;
	}
	public String getResumetitle() {
		return resumetitle;
	}
	public void setResumetitle(String resumetitle) {
		this.resumetitle = resumetitle;
	}
	public Timestamp getResumeregdate() {
		return resumeregdate;
	}
	public void setResumeregdate(Timestamp resumeregdate) {
		this.resumeregdate = resumeregdate;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getAward() {
		return award;
	}
	public void setAward(String award) {
		this.award = award;
	}
	public int getLanglicence_code() {
		return langlicence_code;
	}
	public void setLanglicence_code(int langlicence_code) {
		this.langlicence_code = langlicence_code;
	}
	public int getLicence_code() {
		return licence_code;
	}
	public void setLicence_code(int licence_code) {
		this.licence_code = licence_code;
	}
	public int getDv_code() {
		return dv_code;
	}
	public void setDv_code(int dv_code) {
		this.dv_code = dv_code;
	}
	public int getAcademic_code() {
		return academic_code;
	}
	public void setAcademic_code(int academic_code) {
		this.academic_code = academic_code;
	}
	public int getDesiredwork_code() {
		return desiredwork_code;
	}
	public void setDesiredwork_code(int desiredwork_code) {
		this.desiredwork_code = desiredwork_code;
	}
	public String getOpenchekc() {
		return openchekc;
	}
	public void setOpenchekc(String openchekc) {
		this.openchekc = openchekc;
	}
	public int getMember_code() {
		return member_code;
	}
	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}
	@Override
	public String toString() {
		return "resumeVO [resume_code=" + resume_code + ", resumetitle=" + resumetitle + ", resumeregdate="
				+ resumeregdate + ", introduce=" + introduce + ", award=" + award + ", langlicence_code="
				+ langlicence_code + ", licence_code=" + licence_code + ", dv_code=" + dv_code + ", academic_code="
				+ academic_code + ", desiredwork_code=" + desiredwork_code + ", openchekc=" + openchekc
				+ ", member_code=" + member_code + "]";
	}
	
	
	
}
