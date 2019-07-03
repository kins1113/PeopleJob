package com.ez.peoplejob.notice.model;

import java.util.List;

import com.ez.peoplejob.common.SearchVO;

public interface NoticeDAO {
	public int insertNotice(NoticeVO vo);
	public List<NoticeVO> selectAll(SearchVO searchVo);
	int selectTotalCount(SearchVO searchVo);
}
