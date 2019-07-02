package com.ez.peoplejob.board.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardKindServiceImpl implements BoardKindService{
	@Autowired
	private BoardKindDAO boardKindDao;

	@Override
	public int insertBKind(String type) {
		return boardKindDao.insertBKind(type);
	}

	@Override
	public List<BoardKindVO> selectBKind() {
		return boardKindDao.selectBKind();
	}
	
	
	
}
