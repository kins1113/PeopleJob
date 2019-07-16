package com.ez.peoplejob.popup.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PopupServiceImpl implements PopupService{
	
	@Autowired private PopupDAO popupDao;

	@Override
	public int insertPopup(PopupVO popupVo) {
		return popupDao.insertPopup(popupVo);
	}

	@Override
	public List<PopupVO> selectPopupAll() {
		return popupDao.selectPopupAll();
	}

	@Override
	public int updateUsage(Map<String, Object> map) {
		return popupDao.updateUsage(map);
	}

	@Override
	public int multUpdateUsage(Map<String, Object> map) {
		String[] usageCkArr=(String[]) map.get("usageCkArr");
		int[] popupCodeArr=(int[]) map.get("popupCodeArr");
		
		int result=0;
		if(usageCkArr.length>0) {
			for(int i=0;i<usageCkArr.length; i++) {
				map.put("usageCk", usageCkArr[i]);
				map.put("popupCode", popupCodeArr[i]);
				
				result += popupDao.updateUsage(map);
			}
		}else {
			return 0;
		}
		
		return result;
	}
	
	
	
}
