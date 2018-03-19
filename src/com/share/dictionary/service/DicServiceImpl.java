package com.share.dictionary.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.share.ass.DAO.AssDAO;
import com.share.dictionary.DAO.DicDAO;
import com.share.train.DAO.TraDAO;

public class DicServiceImpl implements DicService<Map<String,Object>,Map<String,Object>>{

	@Autowired
	private DicDAO<Map<String, Object>> dicDAO;
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	HttpSession session;
	
	@Override
	public DicDAO<Map<String,Object>> getDicDAO() {
		// TODO Auto-generated method stub
		return this.dicDAO;
	}
	
	/**
	 * 通过request得到页面的参数，进行封装参数到param(map)中
	 */
	@Override
	public Map<String,Object> buildParam(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Map<String, String[]> parameterMaps = request.getParameterMap();
		Map<String, Object> result = new HashMap<String,Object>();
		String[] values;
		for (Entry<String, String[]> entry : parameterMaps.entrySet()) {
			values = entry.getValue();
			if (values.length > 1) {
				result.put(entry.getKey(), values);
			} else if (values.length == 1) {
				if (!"".equals(values[0])) {
					result.put(entry.getKey(), values[0]);
				}
			}
		}
		return result;
	}/**
	 * 判断员工列表方法
	 * @param param
	 * @return
	 * @throws Exception 
	 */
	public Map<String,Object> getAssService(Map<String,Object> param) throws Exception{
		
		List<Map<String, Object>> resultAss = getDicDAO().getDicList(param);
		/**
		 * 测试
		 */
		System.out.println(resultAss);
		Map<String,Object> resultMap=new HashMap<String,Object>();
		if(resultAss.size()==0){
			resultMap.put("toPage", "/new.jsp");
			resultMap.put("msg","没有用户");
			return resultMap;
		}else{
			resultMap.put("toPage", "/diclist");
			
			return resultMap;
		}
		
	}
	
	
	
	/**
	 * 查询员工列表方法
	 * @param param
	 * @return
	 * @throws Exception 
	 */
	public List<Map<String,Object>> getAssListService(Map<String,Object> param) throws Exception{
		
		List<Map<String, Object>> resultAss = getDicDAO().getDicList(param);
		/**
		 * 测试
		 */
		System.out.println(resultAss); 
			
		return resultAss;
	}
	
	
	
	/**
	 * 删除一个员工方法
	 * @param param
	 * @return
	 */
	public Map<String,Object> deleteDicService(Map<String,Object> param){
		
		int rowCount;
		Map<String,Object> resultMap=new HashMap<String,Object>();
		try {
			rowCount = getDicDAO().deleteDic(param);
			/**
			 * 测试
			 */
			System.out.println(rowCount);
			resultMap.put("toPage","/indirect4");
			resultMap.put("msg","删除"+rowCount+"行"); 
			System.out.println(resultMap.get("msg"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			
		return resultMap;
		
	}
	
	/**
	 * 修改一个员工方法
	 * @param param
	 * @return
	 */
	public Map<String,Object> updateDicService(Map<String,Object> param){
		
		int rowCount;
		Map<String,Object> resultMap=new HashMap<String,Object>();
		try {
			System.out.println(param.get("updateId"));
			System.out.println(param);
			rowCount = getDicDAO().updateDic(param);
			/**
			 * 测试
			 */
			System.out.println(rowCount);
			resultMap.put("toPage","/indirect4");
			resultMap.put("msg","修改"+rowCount+"行"); 
			System.out.println(resultMap.get("msg"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			
		return resultMap;
		
	}
	
	/**
	 * 得到一行员工信息的方法
	 * @param param
	 * @return
	 */
	public Map<String,Object> getRowService(Map<String,Object> param){

		Map<String,Object> resultMap=new HashMap<String,Object>();
		try {
			System.out.println(param.get("iId"));
			List<Map<String, Object>> resultEmp= getDicDAO().getDic(param);
			resultMap.putAll(resultEmp.get(0));
			/**
			 * 测试resultmap
			 */
			System.out.println("--------dfgsdg-sdgfasdgf-a-agf-----------");
			System.out.println(resultMap);
			resultMap.put("toPage","/updatedic");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			
		return resultMap;
		
	}
	
	
	

}
