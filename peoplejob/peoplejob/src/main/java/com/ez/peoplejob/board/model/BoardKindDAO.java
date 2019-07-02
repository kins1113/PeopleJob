package com.ez.peoplejob.board.model;

import java.util.List;

public interface BoardKindDAO {
	public int insertBKind(String type);
	public List<BoardKindVO> selectBKind();
}
