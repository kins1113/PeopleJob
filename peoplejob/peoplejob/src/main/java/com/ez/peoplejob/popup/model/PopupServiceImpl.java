package com.ez.peoplejob.popup.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.peoplejob.popup.controller.PopupController;

@Service
public class PopupServiceImpl implements PopupService{
	
	@Autowired private PopupDAO popupDao;
	private Logger logger=LoggerFactory.getLogger(PopupServiceImpl.class);

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
			
			
			
			
			
				result = popupDao.updateUsageYandN(map);
		}
		logger.info("update 결과 service에서 result={}",result);
		return result;
	}
	
	
	
}
