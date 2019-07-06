package com.ez.peoplejob.resume.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.peoplejob.common.SearchVO;

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
	@Override
	public int insertLangcertification(ResumeVO vo) {
		return resumeDao.insertLangcertification(vo);
	}
	@Override
	public int insertCertificate(ResumeVO vo) {
		return resumeDao.insertCertificate(vo);
	}
	@Override
	public int insertCareer(ResumeVO vo) {
		return resumeDao.insertCareer(vo);
	}
	@Override
	public int insertEducation(ResumeVO vo) {
		return resumeDao.insertEducation(vo);
	}
	@Override
	public int insertHopeWorking(ResumeVO vo) {
		return resumeDao.insertHopeWorking(vo);
	}
	@Override
	public int insertFirst(ResumeVO vo) {
		return resumeDao.insertFirst(vo);
	}
	@Override
	public int insertSecond(ResumeVO vo) {
		return resumeDao.insertSecond(vo);
	}
	@Override
	public int insertThird(ResumeVO vo) {
		return resumeDao.insertThird(vo);
	}
	@Override
	public int insertLocation(ResumeVO vo) {
		return resumeDao.insertLocation(vo);
	}
	@Override
	public ResumeVO selectByMemverid(String memberid) {
		return resumeDao.selectByMemverid(memberid);
	}
	@Override
	public List<ResumeVO> selectAll(SearchVO searscVo) {
		return resumeDao.selectAll(searscVo);
	}

}
