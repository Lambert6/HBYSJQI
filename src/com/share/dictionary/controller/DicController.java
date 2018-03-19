package com.share.dictionary.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.share.dictionary.service.DicServiceImpl;



@Controller
public class DicController {
	
	@Autowired
	private DicServiceImpl dicService;
	
	@RequestMapping("selectdic.action")
	public ModelAndView toTraList(HttpServletRequest request) throws Exception {
		System.out.println("查找所有系统用户");
		Map<String,Object> param = (Map<String, Object>) dicService.buildParam(request);
		Map<String,Object> result = dicService.getAssService(param);
		List<Map<String,Object>> diclist = dicService.getAssListService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		request.setAttribute("diclist", diclist);
		nav.addAllObjects(result);
		return nav;
	}
	

	@RequestMapping("deleteDic.action")
	public ModelAndView deleteRowDic(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) dicService.buildParam(request);
		Map<String,Object> result = dicService.deleteDicService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("updateDic.action")
	public ModelAndView updateRowDic(HttpServletRequest request) throws Exception {	
		System.out.println("修改成功");
		Map<String,Object> param = (Map<String, Object>) dicService.buildParam(request);
		Map<String,Object> result = dicService.updateDicService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("getDic.action")
	public ModelAndView getRowDic(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) dicService.buildParam(request);
		Map<String,Object> result = dicService.getRowService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	@RequestMapping("getDicDetails.action")
	public ModelAndView getDetailDic(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) dicService.buildParam(request);
		Map<String,Object> result = dicService.getRowService(param);
		ModelAndView nav = new ModelAndView("/detaildic");
		nav.addAllObjects(result);
		return nav;
	}
}
