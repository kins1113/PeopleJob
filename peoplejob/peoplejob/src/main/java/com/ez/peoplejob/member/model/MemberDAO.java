package com.ez.peoplejob.member.model;

import java.util.List;
import java.util.Map;

public interface MemberDAO {
	int insertMember(MemberVO memberVo);
	String selectPwdForLogin(String memberId);
	int dupUserid(String memberId);
	MemberVO selectByUserid(String memberId);
	int insertCompany(CompanyVO companyVo);
	int updateMember(MemberVO memberVo);
	int memberOut(String memberId);
	
	int insertIndividaulMember(MemberVO memberVo);
	
	
	//관리자용 전체 조회 	- 옥환
	List<MemberVO> selectAllManager(Map<String, Object> map);
	int getTotalRecord(Map<String, Object>map);	// 관리자용 totalRecord 구하는 메서드 -옥환
}
