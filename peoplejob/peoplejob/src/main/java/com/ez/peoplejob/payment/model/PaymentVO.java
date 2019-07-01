package com.ez.peoplejob.payment.model;

import java.sql.Timestamp;

public class PaymentVO {
	private int paymentCode;	// 결제 코드
	private String patmentway;   // 결제수단
	private String progress;     // 진행상황
	private int discount;     // 할인금액
	private Timestamp paydate;    // 결제일
	private Timestamp payend_date;  // 종료일
	private int service_code;   //서비스 코드
	private int memberCode;  //회원 코드
	public int getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(int paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getPatmentway() {
		return patmentway;
	}
	public void setPatmentway(String patmentway) {
		this.patmentway = patmentway;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public Timestamp getPaydate() {
		return paydate;
	}
	public void setPaydate(Timestamp paydate) {
		this.paydate = paydate;
	}
	public Timestamp getPayend_date() {
		return payend_date;
	}
	public void setPayend_date(Timestamp payend_date) {
		this.payend_date = payend_date;
	}
	public int getService_code() {
		return service_code;
	}
	public void setService_code(int service_code) {
		this.service_code = service_code;
	}
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	@Override
	public String toString() {
		return "PaymentVO [paymentCode=" + paymentCode + ", patmentway=" + patmentway + ", progress=" + progress
				+ ", discount=" + discount + ", paydate=" + paydate + ", payend_date=" + payend_date + ", service_code="
				+ service_code + ", memberCode=" + memberCode + "]";
	}
	
	
	

}
