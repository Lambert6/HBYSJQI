package com.share.ass.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.share.ass.service.AssServiceImpl;



@Controller
public class AssController {
	
	@Autowired
	private AssServiceImpl assService;
	
	@RequestMapping("selectass.action")
	public ModelAndView toTraList(@RequestParam(value = "pn", defaultValue = "1") Integer pn,HttpServletRequest request, HttpServletResponse response) throws Exception {
		int i = 9;
		int page = pn;
		int pages = (page - 1) * i;
		int totalPages = assService.getTotalPages(i);
		System.out.println("查找实习员工");
		Map<String,Object> param = (Map<String, Object>) assService.buildParam(request);
		Map<String,Object> result = assService.getAssService(param,pages);
		List<Map<String,Object>> asslist = assService.getAssListService(param,pages);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		request.setAttribute("commonPn", page);
		request.setAttribute("commonTotal", totalPages);
		request.setAttribute("asslist", asslist);
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("retass.action")
	public ModelAndView retass(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) assService.buildParam(request);		
		Map<String,Object> result = assService.getretass(param);
		List<Map<String,Object>> asslist1 = assService.getassListService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		request.setAttribute("asslist1", asslist1);
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("addass.action")
	public ModelAndView toAddTra(HttpServletRequest request) throws Exception {	
		System.out.println("添加员工");
		Map<String,Object> param = (Map<String, Object>) assService.buildParam(request);
		Map<String,Object> result = assService.addService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("deleteAss.action")
	public ModelAndView deleteRowAss(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) assService.buildParam(request);
		Map<String,Object> result = assService.deleteAssService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("updateAss.action")
	public ModelAndView updateRowAss(HttpServletRequest request) throws Exception {	
		System.out.println("修改成功");
		Map<String,Object> param = (Map<String, Object>) assService.buildParam(request);
		Map<String,Object> result = assService.updateAssService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("getAss.action")
	public ModelAndView getRowAss(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) assService.buildParam(request);
		Map<String,Object> result = assService.getRowService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	@RequestMapping("getAssDetails.action")
	public ModelAndView getDetailAss(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) assService.buildParam(request);
		Map<String,Object> result = assService.getRowService(param);
		ModelAndView nav = new ModelAndView("/detailass");
		nav.addAllObjects(result);
		return nav;
	}
}
