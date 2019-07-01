package com.ez.peoplejob.notice.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO noticeDao;
	
	public int insertNotice(NoticeVO vo) {
		return noticeDao.insertNotice(vo);
	}
}
