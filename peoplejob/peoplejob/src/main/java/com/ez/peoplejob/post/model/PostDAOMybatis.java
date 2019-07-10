package com.ez.peoplejob.post.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PostDAOMybatis implements PostDAO{
	@Autowired
	private SqlSessionTemplate sqlsession;
	private String namespace="config.mybatis.mapper.oracle.post.";
	
	private Logger logger=LoggerFactory.getLogger(PostDAOMybatis.class);
	@Override
	public List<Map<String, Object>> selectPostAll(Map<String, Object> map) {
		logger.info("DAO에서 확인 map.stardDay={} endDay={}",map.get("startDay"),map.get("endDay"));
		logger.info("DAO에서 확인 map.vo={}",map.get("postVo"));
		
		
		return sqlsession.selectList(namespace+"selectPostAll",map);
	}
	@Override
	public int gettotalRecord(PostVO postVO) {
		return sqlsession.selectOne(namespace+"gettotalRecord",postVO);
	}
	@Override
	public int updateDelete(Map<String, int[]> map) {
		return sqlsession.update(namespace+"updateDelete", map);
	}
	@Override
	public int changeDelete(Map<String, Object> map) {
		return sqlsession.update(namespace+"changeDelete",map);
	}

}
