package com.ez.peoplejob.board.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired BoardDAO boardDao;
	
	@Override
	public int insetBoard(BoardVO vo) {
		return boardDao.insetBoard(vo);
	}

}
