package com.share.register.service;

import org.springframework.beans.factory.annotation.Autowired;


import com.share.register.DAO.UserDao;
import com.share.register.entity.User;

public class RegisterServiceImpl implements UserService{
	 @Autowired  
	    private UserDao userDao; 
	@Override  
	    public void regist(User user) {  
	        // TODO Auto-generated method stub  
		userDao.addUser(user);  
	    }  
	@Override  
	public void update(User user){
		userDao.updateUser(user);
	}
	
}
