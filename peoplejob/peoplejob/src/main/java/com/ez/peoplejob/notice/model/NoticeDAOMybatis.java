package com.ez.peoplejob.notice.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.peoplejob.common.SearchVO;

@Repository
public class NoticeDAOMybatis implements NoticeDAO {
	@Autowired private SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.notice.";
	
	public int insertNotice(NoticeVO vo) {
		int cnt=sqlSession.insert(namespace+"insertNotice",vo);
		return cnt;
	}
	
	public List<NoticeVO> selectAll(SearchVO searchVo){
		List<NoticeVO>list
		=sqlSession.selectList(namespace+"selectSearch",searchVo);
		return list;
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return sqlSession.selectOne(namespace+"selectTotalCount",searchVo);
	}

	@Override
	public int updateReadCount(int notifyCode) {
		return sqlSession.update(namespace+"updateReadCount", notifyCode);
	}
}
