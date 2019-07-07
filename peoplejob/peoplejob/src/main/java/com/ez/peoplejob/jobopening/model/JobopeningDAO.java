package com.ez.peoplejob.jobopening.model;

import java.util.List;

import com.ez.peoplejob.common.SearchVO;

public interface JobopeningDAO {
	public int insertJobOpen(JobopeningVO vo);
	List<JobopeningVO>selectJobOpen(SearchVO vo);
	JobopeningVO selectJobOpenByNo(int jobopening);
	int updateJobOpen(JobopeningVO vo);
	int updateHits(int jobopening);
	int deleteJobOpen(int jobopening);
	int updateAdminagree(int jobopening);
	int selectTotalCount(SearchVO vo);
}
