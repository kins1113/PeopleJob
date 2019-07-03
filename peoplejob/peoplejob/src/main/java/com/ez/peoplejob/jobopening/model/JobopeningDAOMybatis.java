package com.ez.peoplejob.jobopening.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JobopeningDAOMybatis implements JobopeningDAO{
	
	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.company.";
	@Override
	public int insertJobOpen(JobopeningVO vo) {
		return sqlSession.insert(namespace+"insertJobOpen",vo);
	}
	@Override
	public List<JobopeningVO> selectJobOpen() {
		return sqlSession.selectList(namespace+"selectJobOpen");
	}
	@Override
	public JobopeningVO selectJobOpenByNo(int jobopening) {
		return sqlSession.selectOne(namespace+"selectJobOpenByNo",jobopening);
	}
	
}
