package com.ez.peoplejob.jobopening.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.peoplejob.common.SearchVO;

@Service
public class JobopeningServiceImpl implements JobopeningService{

	@Autowired private JobopeningDAO jobopeningDao;

	@Override
	public int insertJobOpen(JobopeningVO vo) {
		return jobopeningDao.insertJobOpen(vo);
	}

	@Override
	public List<JobopeningVO> selectJobOpen(SearchVO vo) {
		return jobopeningDao.selectJobOpen(vo);
	}

	@Override
	public JobopeningVO selectJobOpenByNo(int jobopening) {
		return jobopeningDao.selectJobOpenByNo(jobopening);
	}

	@Override
	public int updateJobOpen(JobopeningVO vo) {
		return jobopeningDao.updateJobOpen(vo);
	}

	@Override
	public int updateHits(int jobopening) {
		return jobopeningDao.updateHits(jobopening);
	}

	@Override
	public int deleteJobOpen(int jobopening) {
		return jobopeningDao.deleteJobOpen(jobopening);
	}

	@Override
	public int updateAdminagree(int jobopening) {
		return jobopeningDao.updateAdminagree(jobopening);
	}

	@Override
	public int selectTotalCount(Map<String,Object>map) {
		return jobopeningDao.selectTotalCount(map);
	}

	@Override
	public List<JobopeningVO> selectJobOpen2(Map<String, Object> map) {
		return jobopeningDao.selectJobOpen2(map);
	}
	
}
