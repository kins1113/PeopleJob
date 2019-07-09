package com.ez.peoplejob.notice.model;

import java.util.List;

import com.ez.peoplejob.common.SearchVO;

public interface NoticeService {
	public int insertNotice(NoticeVO vo);
	public List<NoticeVO> selectAll(SearchVO searchVo);
	int selectTotalCount(SearchVO searchVo);
	public int updateReadCount(int notifyCode);
	public NoticeVO selectByNo(int notifyCode);
	public int updateNotice(NoticeVO vo);
	public int deleteNotice(int notifyCode);
	
}
