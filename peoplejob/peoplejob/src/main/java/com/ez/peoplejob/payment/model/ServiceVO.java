package com.ez.peoplejob.payment.model;

public class ServiceVO {
	private int SERVICE_CODE;
	private String SERVICENAME; 
	private int SERVICEPRICE;  
	private String SERVICECONTENT;
	private int SERVICEDAY;
	public int getSERVICE_CODE() {
		return SERVICE_CODE;
	}
	public void setSERVICE_CODE(int sERVICE_CODE) {
		SERVICE_CODE = sERVICE_CODE;
	}
	public String getSERVICENAME() {
		return SERVICENAME;
	}
	public void setSERVICENAME(String sERVICENAME) {
		SERVICENAME = sERVICENAME;
	}
	public int getSERVICEPRICE() {
		return SERVICEPRICE;
	}
	public void setSERVICEPRICE(int sERVICEPRICE) {
		SERVICEPRICE = sERVICEPRICE;
	}
	public String getSERVICECONTENT() {
		return SERVICECONTENT;
	}
	public void setSERVICECONTENT(String sERVICECONTENT) {
		SERVICECONTENT = sERVICECONTENT;
	}
	public int getSERVICEDAY() {
		return SERVICEDAY;
	}
	public void setSERVICEDAY(int sERVICEDAY) {
		SERVICEDAY = sERVICEDAY;
	}
	
	@Override
	public String toString() {
		return "ServiceVO [SERVICE_CODE=" + SERVICE_CODE + ", SERVICENAME=" + SERVICENAME + ", SERVICEPRICE="
				+ SERVICEPRICE + ", SERVICECONTENT=" + SERVICECONTENT + ", SERVICEDAY=" + SERVICEDAY + "]";
	}   
	
	
}
