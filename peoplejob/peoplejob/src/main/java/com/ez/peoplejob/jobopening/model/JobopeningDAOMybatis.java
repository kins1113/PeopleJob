package com.ez.peoplejob.jobopening.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.peoplejob.common.SearchVO;

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
	@Override
	public int updateJobOpen(JobopeningVO vo) {
		return sqlSession.update(namespace+"updateJobOpen",vo);
	}
	@Override
	public int updateHits(int jobopening) {
		return sqlSession.update(namespace+"updateHits",jobopening);
	}
	@Override
	public int deleteJobOpen(int jobopening) {
		return sqlSession.delete(namespace+"deleteJobOpen",jobopening);
	}
	@Override
	public int updateAdminagree(int jobopening) {
		return sqlSession.update(namespace+"updateAdminagree",jobopening);
	}
	@Override
	public int selectTotalCount(SearchVO vo) {
		return sqlSession.selectOne(namespace+"selectTotalCount",vo);
	}
	         
	
}
