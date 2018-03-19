package com.share.outsource.service;

import javax.servlet.http.HttpServletRequest;


import com.share.outsource.DAO.OutDAO;


public interface OutService<R,P> {
	
	P buildParam(HttpServletRequest request);
	
	public OutDAO<R> getOutDAO();
}
