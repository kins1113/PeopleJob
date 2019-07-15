package com.ez.peoplejob.tableaply.model;

import java.util.List;
import java.util.Map;

public interface TableaplyDAO {
	int insertapply(TableaplyVO vo);
	List<TableaplyVO> selectapply(Map<String,Object> map);
	int selectapplyCount(Map<String,Object> map);
	int dupapply(int jobopening);
	int deleteapply(Map<String,Object>map);
	List<TableaplyVO> selectapplyComp(Map<String,Object> map);
}
