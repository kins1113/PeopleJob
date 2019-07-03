package com.ez.peoplejob.resume.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResumeServiceImpl implements ResumeService{
	@Autowired
	private ResumeDAO resumeDao;
	@Override
	public int insertResume(ResumeVO vo) {
		
		return resumeDao.insertResume(vo);
	}
	@Override
	public ResumeVO selectResumeByNo(int resumeCode) {
		return resumeDao.selectResumeByNo(resumeCode);
	}
	@Override
	public int deleteResumeByNo(int resumeCode) {
		return resumeDao.deleteResumeByNo(resumeCode);
	}
	@Override
	public int updateResume(ResumeVO vo) {
		return resumeDao.updateResume(vo);
	}

}
