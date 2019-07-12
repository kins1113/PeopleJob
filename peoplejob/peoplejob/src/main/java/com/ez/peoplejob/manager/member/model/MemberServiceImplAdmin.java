package com.ez.peoplejob.manager.member.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.peoplejob.member.model.MemberVO;

@Service
public class MemberServiceImplAdmin  implements MemberServiceAdmin{
	@Autowired
	private MemberDAOAdmin memberDaoAdmin;
		
	@Override
	public List<MemberVO> selectAllManager(Map<String, Object> map) {
		return memberDaoAdmin.selectAllManager(map);
	}

	@Override
	public int getTotalRecord(Map<String, Object> map) {
		return memberDaoAdmin.getTotalRecord(map);
	}

	
}
