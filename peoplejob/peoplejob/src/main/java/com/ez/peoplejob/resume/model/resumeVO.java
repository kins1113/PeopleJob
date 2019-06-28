package com.ez.peoplejob.resume.model;

import java.sql.Timestamp;

public class resumeVO {
	private int RESUME_CODE;
	private String RESUMETITLE;
	private Timestamp RESUMEREGDATE;
	private String INTRODUCE;
	private String AWARD;
	private int LANGLICENCE_CODE;
	private int LICENCE_CODE;
	private int DV_CODE;
	private int ACADEMIC_CODE;
	private int DESIREDWORK_CODE;
	private String OPENCHECK;
	private int MEMBER_CODE;
	public int getRESUME_CODE() {
		return RESUME_CODE;
	}
	public void setRESUME_CODE(int rESUME_CODE) {
		RESUME_CODE = rESUME_CODE;
	}
	public String getRESUMETITLE() {
		return RESUMETITLE;
	}
	public void setRESUMETITLE(String rESUMETITLE) {
		RESUMETITLE = rESUMETITLE;
	}
	public Timestamp getRESUMEREGDATE() {
		return RESUMEREGDATE;
	}
	public void setRESUMEREGDATE(Timestamp rESUMEREGDATE) {
		RESUMEREGDATE = rESUMEREGDATE;
	}
	public String getINTRODUCE() {
		return INTRODUCE;
	}
	public void setINTRODUCE(String iNTRODUCE) {
		INTRODUCE = iNTRODUCE;
	}
	public String getAWARD() {
		return AWARD;
	}
	public void setAWARD(String aWARD) {
		AWARD = aWARD;
	}
	public int getLANGLICENCE_CODE() {
		return LANGLICENCE_CODE;
	}
	public void setLANGLICENCE_CODE(int lANGLICENCE_CODE) {
		LANGLICENCE_CODE = lANGLICENCE_CODE;
	}
	public int getLICENCE_CODE() {
		return LICENCE_CODE;
	}
	public void setLICENCE_CODE(int lICENCE_CODE) {
		LICENCE_CODE = lICENCE_CODE;
	}
	public int getDV_CODE() {
		return DV_CODE;
	}
	public void setDV_CODE(int dV_CODE) {
		DV_CODE = dV_CODE;
	}
	public int getACADEMIC_CODE() {
		return ACADEMIC_CODE;
	}
	public void setACADEMIC_CODE(int aCADEMIC_CODE) {
		ACADEMIC_CODE = aCADEMIC_CODE;
	}
	public int getDESIREDWORK_CODE() {
		return DESIREDWORK_CODE;
	}
	public void setDESIREDWORK_CODE(int dESIREDWORK_CODE) {
		DESIREDWORK_CODE = dESIREDWORK_CODE;
	}
	public String getOPENCHECK() {
		return OPENCHECK;
	}
	public void setOPENCHECK(String oPENCHECK) {
		OPENCHECK = oPENCHECK;
	}
	public int getMEMBER_CODE() {
		return MEMBER_CODE;
	}
	public void setMEMBER_CODE(int mEMBER_CODE) {
		MEMBER_CODE = mEMBER_CODE;
	}
	@Override
	public String toString() {
		return "resumeVO [RESUME_CODE=" + RESUME_CODE + ", RESUMETITLE=" + RESUMETITLE + ", RESUMEREGDATE="
				+ RESUMEREGDATE + ", INTRODUCE=" + INTRODUCE + ", AWARD=" + AWARD + ", LANGLICENCE_CODE="
				+ LANGLICENCE_CODE + ", LICENCE_CODE=" + LICENCE_CODE + ", DV_CODE=" + DV_CODE + ", ACADEMIC_CODE="
				+ ACADEMIC_CODE + ", DESIREDWORK_CODE=" + DESIREDWORK_CODE + ", OPENCHECK=" + OPENCHECK
				+ ", MEMBER_CODE=" + MEMBER_CODE + "]";
	}
	
	
}
