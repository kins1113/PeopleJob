package com.ez.peoplejob.manager.member.model;

import java.util.List;
import java.util.Map;

import com.ez.peoplejob.member.model.MemberVO;

public interface MemberDAOAdmin {

	List<MemberVO> selectAllManager(Map<String, Object> map);
	int getTotalRecord(Map<String, Object> map);
}
