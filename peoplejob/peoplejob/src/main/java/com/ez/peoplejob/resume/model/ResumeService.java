package com.ez.peoplejob.resume.model;

public interface ResumeService {
	public int insertResume(ResumeVO vo);
	public ResumeVO selectResumeByNo(int resumeCode);
public int deleteResumeByNo(int resumeCode);
	
	public int updateResume(ResumeVO vo);
}
