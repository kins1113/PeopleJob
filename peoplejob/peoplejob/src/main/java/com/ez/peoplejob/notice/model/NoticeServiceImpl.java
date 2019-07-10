package com.ez.peoplejob.notice.model;

import java.util.List;
import java.util.Map;

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
	public List<Map<String, Object>> selectAll(SearchVO searchVo) {
		return noticeDao.selectAll(searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return noticeDao.selectTotalCount(searchVo);
	}

	@Override
	public int updateReadCount(int notifyCode) {
		return noticeDao.updateReadCount(notifyCode);
	}

	@Override
	public NoticeVO selectByNo(int notifyCode) {
		return noticeDao.selectByNo(notifyCode);
	}

	@Override
	public int updateNotice(NoticeVO vo) {
		return noticeDao.updateNotice(vo);
	}

	@Override
	public int deleteNotice(String[] list) {
		int cnt=0;
		try {
			for(String code:list) {
				int re=0;
				re=noticeDao.deleteNotice(Integer.parseInt(code));
				cnt+=re;
			}
		}catch(RuntimeException e){
			e.printStackTrace();
		}
		return cnt;
	}
}
