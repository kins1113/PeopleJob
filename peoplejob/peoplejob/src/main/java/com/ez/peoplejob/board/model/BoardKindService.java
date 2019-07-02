package com.ez.peoplejob.board.model;

import java.util.List;

public interface BoardKindService {
	public int insertBKind(String type);
	public List<BoardKindVO> selectBKind();
	
}
