package com.ez.peoplejob.scrap.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScrapServiceImpl implements ScrapService{
	@Autowired ScrapDAO scrapDao;

	@Override
	public int insertScrap(ScrapVO vo) {
		return scrapDao.insertScrap(vo);
	}
	
}
