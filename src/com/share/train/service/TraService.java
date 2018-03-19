package com.share.train.service;

import javax.servlet.http.HttpServletRequest;


import com.share.train.DAO.TraDAO;

public interface TraService<R,P> {
	
	P buildParam(HttpServletRequest request);
	
	public TraDAO<R> getTraDAO();
}
