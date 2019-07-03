package com.ez.peoplejob.jobopening.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JobopeningServiceImpl implements JobopeningService{

	@Autowired private JobopeningDAO jobopeningDao;

	@Override
	public int insertJobOpen(JobopeningVO vo) {
		return jobopeningDao.insertJobOpen(vo);
	}

	@Override
	public List<JobopeningVO> selectJobOpen() {
		return jobopeningDao.selectJobOpen();
	}

	@Override
	public JobopeningVO selectJobOpenByNo(int jobopening) {
		return jobopeningDao.selectJobOpenByNo(jobopening);
	}
	
}
