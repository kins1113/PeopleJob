package com.ez.peoplejob.tableaply.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TableaplyDAOMybatis implements TableaplyDAO{
	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.apply.";
	@Override
	public int insertapply(TableaplyVO vo) {
		return sqlSession.insert(namespace+"insertapply",vo);
	}
	@Override
	public List<TableaplyVO> selectapply(Map<String,Object> map) {
		return sqlSession.selectList(namespace+"selectapply",map);
	}
	@Override
	public int selectapplyCount(Map<String,Object> map) {
		return sqlSession.selectOne(namespace+"selectapplyCount",map);
	}
	@Override
	public int dupapply(int jobopening) {
		return sqlSession.selectOne(namespace+"dupapply",jobopening);
	}
	@Override
	public int deleteapply(Map<String, Object> map) {
		return sqlSession.delete(namespace+"deleteapply",map);
	}
	@Override
	public List<TableaplyVO> selectapplyComp(Map<String, Object> map) {
		return sqlSession.selectList(namespace+"selectapplyComp",map);
	}
	
}
