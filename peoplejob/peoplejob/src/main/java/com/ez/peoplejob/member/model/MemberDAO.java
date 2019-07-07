package com.ez.peoplejob.member.model;

public interface MemberDAO {
	int insertMember(MemberVO memberVo);
	String selectPwdForLogin(String memberId);
	int dupUserid(String memberId);
	MemberVO selectByUserid(String memberId);
	int insertCompany(CompanyVO companyVo);
}
