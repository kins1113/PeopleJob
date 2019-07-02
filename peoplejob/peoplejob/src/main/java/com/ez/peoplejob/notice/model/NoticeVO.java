package com.ez.peoplejob.notice.model;

import java.security.Timestamp;

public class NoticeVO {

	private int notify_code;
	private String notifytitle; 
	private String notifycontent;
	private Timestamp notifydate;
	private int admin_code;
	
	//24시간 이내의 글인 경우 image표시하기 위해 사용
		private double newImgTerm;
	
	public double getNewImgTerm() {
			return newImgTerm;
		}
		public void setNewImgTerm(double newImgTerm) {
			this.newImgTerm = newImgTerm;
		}
		//조회수 컬럼도 필요함
	public int getNotify_code() {
		return notify_code;
	}
	public void setNotify_code(int notify_code) {
		this.notify_code = notify_code;
	}
	public String getNotifytitle() {
		return notifytitle;
	}
	public void setNotifytitle(String notifytitle) {
		this.notifytitle = notifytitle;
	}
	public String getNotifycontent() {
		return notifycontent;
	}
	public void setNotifycontent(String notifycontent) {
		this.notifycontent = notifycontent;
	}
	public Timestamp getNotifydate() {
		return notifydate;
	}
	public void setNotifydate(Timestamp notifydate) {
		this.notifydate = notifydate;
	}
	public int getAdmin_code() {
		return admin_code;
	}
	public void setAdmin_code(int admin_code) {
		this.admin_code = admin_code;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [notify_code=" + notify_code + ", notifytitle=" + notifytitle + ", notifycontent="
				+ notifycontent + ", notifydate=" + notifydate + ", admin_code=" + admin_code + ", newImgTerm="
				+ newImgTerm + "]";
	}
	
	
	
}
