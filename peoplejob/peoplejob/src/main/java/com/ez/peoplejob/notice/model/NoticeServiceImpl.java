package com.ez.peoplejob.notice.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.peoplejob.common.SearchVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO noticeDao;
	
	public int insertNotice(NoticeVO vo) {
		return noticeDao.insertNotice(vo);
	}

	@Override
	public List<NoticeVO> selectAll(SearchVO searchVo) {
		return noticeDao.selectAll(searchVo);
	}
}
