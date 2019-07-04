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
	

}
