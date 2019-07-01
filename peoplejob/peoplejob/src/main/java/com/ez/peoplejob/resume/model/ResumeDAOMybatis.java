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
}
