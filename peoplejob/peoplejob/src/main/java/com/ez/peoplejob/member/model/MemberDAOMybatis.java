package com.ez.peoplejob.member.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOMybatis implements MemberDAO{
	@Autowired private SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.member.";

	@Override
	public int insertMember(MemberVO memberVo) {
		return sqlSession.insert(namespace+"insertMember",memberVo);
	}

	@Override
	public String selectPwdForLogin(String memberId) {
		return sqlSession.selectOne(namespace+"selectPwdForLogin",memberId);
	}

	@Override
	public int dupUserid(String memberId) {
		return sqlSession.selectOne(namespace+"dupUserid",memberId);
	}

	@Override
	public MemberVO selectByUserid(String memberId) {
		return sqlSession.selectOne(namespace+"selectMember",memberId);
	}


	@Override
	public int insertCompany(CompanyVO companyVo) {
		return sqlSession.insert(namespace+"insertCompany",companyVo);
	}

	@Override
	public int updateMember(MemberVO memberVo) {
		return sqlSession.update(namespace+"updateMember",memberVo);
	}

	@Override
	public int memberOut(String memberId) {
		return sqlSession.update(namespace+"memberOut",memberId);
	}

	@Override
	public int insertIndividaulMember(MemberVO memberVo) {
		return sqlSession.insert(namespace+"insertIndividaulMember",memberVo);
	}
	

}
