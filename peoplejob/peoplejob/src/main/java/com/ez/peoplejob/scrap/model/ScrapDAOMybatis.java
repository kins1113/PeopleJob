package com.ez.peoplejob.scrap.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScrapDAOMybatis implements ScrapDAO{
	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.scrap.";
	@Override
	public int insertScrap(ScrapVO vo) {
		return sqlSession.insert(namespace+"insertScrap",vo);
	}
}
