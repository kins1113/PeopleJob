package com.ez.peoplejob.jobopening.model;

import java.util.List;
import java.util.Map;

import com.ez.peoplejob.common.SearchVO;

public interface JobopeningService {
	public int insertJobOpen(JobopeningVO vo);
	List<JobopeningVO>selectJobOpen(SearchVO vo);
	List<JobopeningVO>selectJobOpen2(Map<String, Object>map);
	JobopeningVO selectJobOpenByNo(int jobopening);
	int updateJobOpen(JobopeningVO vo);
	int updateHits(int jobopening);
	int deleteJobOpen(int jobopening);
	int updateAdminagree(int jobopening);
	int selectTotalCount(Map<String,Object>map);
}
