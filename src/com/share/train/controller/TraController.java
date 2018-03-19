package com.share.train.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.share.train.service.TraServiceImpl;


@Controller
public class TraController {
	
	@Autowired
	private TraServiceImpl traService;
	
	@RequestMapping("selecttra.action")
	public ModelAndView toTraList(@RequestParam(value = "pn", defaultValue = "1") Integer pn,HttpServletRequest request, HttpServletResponse response)throws Exception {
		int i = 9;
		int page = pn;
		int pages = (page - 1) * i;
		int totalPages = traService.getTotalPages(i);
		Map<String,Object> param = (Map<String, Object>) traService.buildParam(request);
		Map<String,Object> result = traService.getTraService(param,pages);
		List<Map<String,Object>> tralist = traService.getTraListService(param,pages);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		request.setAttribute("tralist", tralist);
		request.setAttribute("commonPn", page);
		request.setAttribute("commonTotal", totalPages);
		nav.addAllObjects(result);
		return nav;
	}
	@RequestMapping("rettra.action")
	public ModelAndView rettra(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) traService.buildParam(request);		
		Map<String,Object> result = traService.getrettra(param);
		List<Map<String,Object>> tralist2 = traService.gettraListService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		request.setAttribute("tralist2", tralist2);
		nav.addAllObjects(result);
		return nav;
	}
	@RequestMapping("addtra.action")
	public ModelAndView toAddTra(HttpServletRequest request) throws Exception {	
		System.out.println("添加员工");
		Map<String,Object> param = (Map<String, Object>) traService.buildParam(request);
		Map<String,Object> result = traService.addService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("deleteTra.action")
	public ModelAndView deleteRowTra(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) traService.buildParam(request);
		Map<String,Object> result = traService.deleteTraService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("updateTra.action")
	public ModelAndView updateRowTra(HttpServletRequest request) throws Exception {	
		System.out.println("修改成功");
		Map<String,Object> param = (Map<String, Object>) traService.buildParam(request);
		Map<String,Object> result = traService.updateTraService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("getTra.action")
	public ModelAndView getRowTra(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) traService.buildParam(request);
		Map<String,Object> result = traService.getRowService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	@RequestMapping("getTraDetails.action")
	public ModelAndView getDetailTra(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) traService.buildParam(request);
		Map<String,Object> result = traService.getRowService(param);
		ModelAndView nav = new ModelAndView("/detailtra");
		nav.addAllObjects(result);
		return nav;
	}
}
