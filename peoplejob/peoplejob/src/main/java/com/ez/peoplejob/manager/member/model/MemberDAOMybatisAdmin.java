package com.ez.peoplejob.manager.member.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.peoplejob.member.model.MemberVO;

@Repository
public class MemberDAOMybatisAdmin implements MemberDAOAdmin{
	private String namespace="config.mybatis.mapper.oracle.member.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemberVO> selectAllManager(Map<String, Object> map) {
		return sqlSession.selectList(namespace+"selectAllManager",map);
	}

	@Override
	public int getTotalRecord(Map<String, Object> map) {
		return sqlSession.selectOne(namespace+"getTotalRecord",map);
	}
	
	
}
