package com.ez.peoplejob.payment.model;

import java.sql.Timestamp;

public class PaymentVO {
	private int paymentCode;	// 결제 코드
	private String PATMENTWAY;   // 결제수단
	private String PROGRESS;     // 진행상황
	private int DISCOUNT;     // 할인금액
	private Timestamp PAYDATE;    // 결제일
	private Timestamp PAYEND_DATE;  // 종료일
	private int SERVICE_CODE;   //서비스 코드
	private int memberCode;  //회원 코드
	
	public int getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(int paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getPATMENTWAY() {
		return PATMENTWAY;
	}
	public void setPATMENTWAY(String pATMENTWAY) {
		PATMENTWAY = pATMENTWAY;
	}
	public String getPROGRESS() {
		return PROGRESS;
	}
	public void setPROGRESS(String pROGRESS) {
		PROGRESS = pROGRESS;
	}
	public int getDISCOUNT() {
		return DISCOUNT;
	}
	public void setDISCOUNT(int dISCOUNT) {
		DISCOUNT = dISCOUNT;
	}
	public Timestamp getPAYDATE() {
		return PAYDATE;
	}
	public void setPAYDATE(Timestamp pAYDATE) {
		PAYDATE = pAYDATE;
	}
	public Timestamp getPAYEND_DATE() {
		return PAYEND_DATE;
	}
	public void setPAYEND_DATE(Timestamp pAYEND_DATE) {
		PAYEND_DATE = pAYEND_DATE;
	}
	public int getSERVICE_CODE() {
		return SERVICE_CODE;
	}
	public void setSERVICE_CODE(int sERVICE_CODE) {
		SERVICE_CODE = sERVICE_CODE;
	}
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	@Override
	public String toString() {
		return "PaymentVO [paymentCode=" + paymentCode + ", PATMENTWAY=" + PATMENTWAY + ", PROGRESS=" + PROGRESS
				+ ", DISCOUNT=" + DISCOUNT + ", PAYDATE=" + PAYDATE + ", PAYEND_DATE=" + PAYEND_DATE + ", SERVICE_CODE="
				+ SERVICE_CODE + ", memberCode=" + memberCode + "]";
	}
	

}
