package com.share.dictionary.service;

import javax.servlet.http.HttpServletRequest;


import com.share.dictionary.DAO.DicDAO;


public interface DicService<R,P> {
	
	P buildParam(HttpServletRequest request);
	
	public DicDAO<R> getDicDAO();
}
