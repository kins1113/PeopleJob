package com.ez.peoplejob.jobopening.model;

import java.util.List;

public interface JobopeningDAO {
	public int insertJobOpen(JobopeningVO vo);
	List<JobopeningVO>selectJobOpen();
	JobopeningVO selectJobOpenByNo(int jobopening);
}
