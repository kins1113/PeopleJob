package com.ez.peoplejob.board.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOMybatis implements BoardDAO{
	private String namespase="config.mybatis.mapper.oracle.board.";
	@Autowired SqlSessionTemplate sqlSession;

	@Override
	public int insetBoard(BoardVO vo) {
		return sqlSession.insert(namespase+"insetBoard", vo);
	}
	
}
