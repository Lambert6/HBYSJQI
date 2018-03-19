package com.share.dictionary.DAO;

import java.util.List;
import java.util.Map;

public interface DicDAO<T> {
	
	/**
	 *根据登陆的账号在数据库中查找对应的账号进行匹配
	 */
	List<T> getDicList(Map<String, Object> param) throws Exception;
	

	
	/**
	 * 删除一行数据
	 * @param param
	 * @return
	 */
	int deleteDic(Map<String,Object> param) throws Exception;
	
	/**
	 * 修改一行数据
	 * @param param
	 * @return
	 */
	int updateDic(Map<String,Object> param) throws Exception;
	
	/**
	 * 得到一行数据
	 * @param param
	 * @return
	 */
	List<T> getDic(Map<String,Object> param) throws Exception;
	

}
