package com.share.ass.DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface AssDAO<T> {
	
	/**
	 *根据登陆的账号在数据库中查找对应的账号进行匹配
	 */
	List<T> getAssList(Map<String, Object> param, @Param("pages") int pages) throws Exception;
	
	/**
	 * 查询分页
	 * @return
	 */
	int selectCount();
	
	/**
	 * 条件查询
	 */
	List<T> retass(Map<String,Object> param) throws Exception;
	/**
	 * 增加一行数据
	 * @param param
	 * @return
	 */
	int addAss(Map<String,Object> param) throws Exception;
	
	/**
	 * 删除一行数据
	 * @param param
	 * @return
	 */
	int deleteAss(Map<String,Object> param) throws Exception;
	
	/**
	 * 修改一行数据
	 * @param param
	 * @return
	 */
	int updateAss(Map<String,Object> param) throws Exception;
	
	/**
	 * 得到一行数据
	 * @param param
	 * @return
	 */
	List<T> getAss(Map<String,Object> param) throws Exception;
	

}
