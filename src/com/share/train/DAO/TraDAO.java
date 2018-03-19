package com.share.train.DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface TraDAO<T> {
	
	
	List<T> getTraList(Map<String, Object> param, @Param("pages") int pages)throws Exception;
	/**
	 * 查询分页
	 * @return
	 */
	int selectCount();
	
	/**
	 * 条件查询
	 */
	List<T> rettrain(Map<String,Object> param) throws Exception;
	
	/**
	 * 增加一行数据
	 * @param param
	 * @return
	 */
	int addTra(Map<String,Object> param) throws Exception;
	
	/**
	 * 删除一行数据
	 * @param param
	 * @return
	 */
	int deleteTra(Map<String,Object> param) throws Exception;
	
	/**
	 * 修改一行数据
	 * @param param
	 * @return
	 */
	int updateTra(Map<String,Object> param) throws Exception;
	
	/**
	 * 得到一行数据
	 * @param param
	 * @return
	 */
	List<T> getTra(Map<String,Object> param) throws Exception;
	

}
