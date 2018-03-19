package com.share.ass.service;

import javax.servlet.http.HttpServletRequest;

import com.share.ass.DAO.AssDAO;


public interface AssService<R,P> {
	
	P buildParam(HttpServletRequest request);
	
	public AssDAO<R> getAssDAO();
}
