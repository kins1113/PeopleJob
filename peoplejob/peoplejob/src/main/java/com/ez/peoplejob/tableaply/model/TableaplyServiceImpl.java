package com.ez.peoplejob.tableaply.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TableaplyServiceImpl implements TableaplyService{
	@Autowired TableaplyDAO tableaplyDao;

	@Override
	public int insertapply(TableaplyVO vo) {
		return tableaplyDao.insertapply(vo);
	}
	@Override
	public List<TableaplyVO> selectapply(Map<String,Object> map) {
		return tableaplyDao.selectapply(map);
	}
	@Override
	public int selectapplyCount(Map<String,Object> map) {
		return tableaplyDao.selectapplyCount(map);
	}
	@Override
	public int dupapply(int jobopening) {
		return tableaplyDao.dupapply(jobopening);
	}
	@Override
	public int deleteJobOpen(Map<String, Object> map) {
		return tableaplyDao.deleteapply(map);
	}

}
