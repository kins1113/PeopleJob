package com.ez.peoplejob.resume.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ResumeDAOMybatis implements ResumeDAO {
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	private String namespace="config.mybatis.mapper.oracle.resume.";
	
	public int insertResume(ResumeVO vo) {
		int cnt=sqlsession.insert(namespace+"insertResume",vo);
		return cnt;
	}

	@Override
	public ResumeVO selectResumeByNo(int resumeCode) {
		ResumeVO vo=sqlsession.selectOne(namespace+"selectResumeByNo",resumeCode);
		
		return vo;
	}

	@Override
	public int deleteResumeByNo(int resumeCode) {
		int cnt=sqlsession.delete(namespace+"deleteResumeByNo",resumeCode);
		return cnt;
	}

	@Override
	public int updateResume(ResumeVO vo) {
		int cnt=sqlsession.update(namespace+"updateResume",vo);
		return cnt;
	}
}
