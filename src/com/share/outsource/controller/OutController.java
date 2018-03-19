package com.share.outsource.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.share.emp.service.EmpServiceImpl;
import com.share.outsource.service.OutServiceImpl;
import com.share.train.service.TraServiceImpl;


@Controller
public class OutController {
	
	@Autowired
	private OutServiceImpl outService;
	
	@RequestMapping("selectout.action")
	public ModelAndView toOutList(@RequestParam(value = "pn", defaultValue = "1") Integer pn,HttpServletRequest request, HttpServletResponse response) throws Exception {
		int i = 9;
		int page = pn;
		int pages = (page - 1) * i;
		int totalPages = outService.getTotalPages(i);
		Map<String,Object> param = (Map<String, Object>) outService.buildParam(request);
		Map<String,Object> result = outService.getOutService(param,pages);
		List<Map<String,Object>> outlist = outService.getOutListService(param,pages);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		request.setAttribute("commonPn", page);
		request.setAttribute("commonTotal", totalPages);
		request.setAttribute("outlist", outlist);
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("retout.action")
	public ModelAndView retout(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) outService.buildParam(request);		
		Map<String,Object> result = outService.getretout(param);
		List<Map<String,Object>> outlist2 = outService.getoutListService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		request.setAttribute("outlist2", outlist2);
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("addout.action")
	public ModelAndView toAddOut(HttpServletRequest request) throws Exception {	
		System.out.println("添加员工");
		Map<String,Object> param = (Map<String, Object>) outService.buildParam(request);
		Map<String,Object> result = outService.addService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("deleteOut.action")
	public ModelAndView deleteRowOut(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) outService.buildParam(request);
		Map<String,Object> result = outService.deleteOutService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("updateOut.action")
	public ModelAndView updateRowOut(HttpServletRequest request) throws Exception {	
		System.out.println("修改成功");
		Map<String,Object> param = (Map<String, Object>) outService.buildParam(request);
		Map<String,Object> result = outService.updateOutService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	
	@RequestMapping("getOut.action")
	public ModelAndView getRowOut(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) outService.buildParam(request);
		Map<String,Object> result = outService.getRowService(param);
		ModelAndView nav = new ModelAndView((String) result.get("toPage"));
		nav.addAllObjects(result);
		return nav;
	}
	@RequestMapping("getOutDetails.action")
	public ModelAndView getDetailOut(HttpServletRequest request) throws Exception {	
		Map<String,Object> param = (Map<String, Object>) outService.buildParam(request);
		Map<String,Object> result = outService.getRowService(param);
		ModelAndView nav = new ModelAndView("/detailout");
		nav.addAllObjects(result);
		return nav;
	}
}
