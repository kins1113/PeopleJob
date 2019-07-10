package com.ez.peoplejob.post.model;

import java.util.List;
import java.util.Map;

public interface PostDAO {
	
	List<Map<String, Object>> selectPostAll(Map<String, Object> map);
	int gettotalRecord(PostVO postVO);
	int updateDelete(Map<String, int[]> map);
	int changeDelete(Map<String, Object> map);
}
