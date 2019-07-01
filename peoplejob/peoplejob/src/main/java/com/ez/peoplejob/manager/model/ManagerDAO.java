package com.ez.peoplejob.manager.model;

import java.util.List;

public interface ManagerDAO {
	public String selectPwdById(String adminid);
	public List<ManagerVO> selectManagerAll();
	public int insertManager(ManagerVO managerVo);
	public int delectManager(int adminCode);
	public String selectAuthorityById(String adminid);
	public int selectIdChk(String adminid);
	public ManagerVO selectByCode(int adminCode);
	public int updateManager(ManagerVO managerVo);
}
