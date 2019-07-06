package com.ez.peoplejob.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDAO memberDao;

	@Override
	public int insertMember(MemberVO memberVo) {
		return memberDao.insertMember(memberVo);
	}


	@Override
	public int dupUserid(String memberId) {
		int count= memberDao.dupUserid(memberId);
		int result=0;
		
		if(count>0) {
			result=NON_USEFUL_USERID;
		}else {
			result=MemberService.USEFUL_USERID;
		}
		return result;
	}

	@Override
	public int loginCheck(String memberid, String pwd) {
		String dbPwd=memberDao.selectPwdForLogin(memberid);
		
		int result=0;
		
		if(dbPwd==null || dbPwd.isEmpty()) {
			result=ID_NONE;
		}else { //있을 때는 같은지 다른지 확인
			if(dbPwd.equals(pwd)) {
				result=LOGIN_OK;
			}else {
				result=PWD_DISAGREE;
			}
		}
		return result;
	}


	@Override
	public MemberVO selectByUserid(String memberId) {
		return memberDao.selectByUserid(memberId);
	}



	

}
