package com.ez.peoplejob.board.model;

public class BoardKindVO {
	private int typeCode; // 종류 코드
	private String type;	//종류
	public int getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(int typeCode) {
		this.typeCode = typeCode;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "BoardKind [typeCode=" + typeCode + ", type=" + type + "]";
	}
	
}
