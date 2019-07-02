package com.ez.peoplejob.board.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardKindDAOMybatis implements BoardKindDAO{
	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.boardKind.";
	
	@Override
	public int insertBKind(String type) {
		return sqlSession.insert(namespace+"insertBKind", type);
	}

	@Override
	public List<BoardKindVO> selectBKind() {
		return sqlSession.selectList(namespace+"selectBKind");
	}
	
	
}
