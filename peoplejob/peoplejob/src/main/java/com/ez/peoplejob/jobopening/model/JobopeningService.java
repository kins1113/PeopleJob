package com.ez.peoplejob.jobopening.model;

import java.util.List;

public interface JobopeningService {
	public int insertJobOpen(JobopeningVO vo);
	List<JobopeningVO>selectJobOpen();
	JobopeningVO selectJobOpenByNo(int jobopening);
	int updateJobOpen(JobopeningVO vo);
	int updateHits(int jobopening);
	int deleteJobOpen(int jobopening);
	int updateAdminagree(int jobopening);
}
