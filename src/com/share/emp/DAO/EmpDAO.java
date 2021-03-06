package com.share.emp.DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface EmpDAO<T> {
	
	/**
	 *根据登陆的账号在数据库中查找对应的账号进行匹配
	 */
	List<T> getEmpList(Map<String, Object> param, @Param("pages") int pages) throws Exception;
	/**
	 * 查询分页
	 * @return
	 */
	int selectCount();
	
	/**
	 * 条件查询
	 */
	List<T> retcommon(Map<String,Object> param) throws Exception;
	
	/**
	 * 增加一行数据
	 * @param param
	 * @return
	 */
	int addRow(Map<String,Object> param) throws Exception;
	
	/**
	 * 删除一行数据
	 * @param param
	 * @return
	 */
	int deleteRow(Map<String,Object> param) throws Exception;
	
	/**
	 * 修改一行数据
	 * @param param
	 * @return
	 */
	int updateRow(Map<String,Object> param) throws Exception;
	
	/**
	 * 得到一行数据
	 * @param param
	 * @return
	 */
	List<T> getRow(Map<String,Object> param) throws Exception;
	

}
