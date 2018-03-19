package com.share.register.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.share.register.entity.User;
import com.share.register.service.UserService;

@Controller  

public class UserAction {
	
	 //注入Service 
	
    @Autowired  
    private UserService userService;      
    @RequestMapping("regist")  
    public String regist(User user,Model model){  
          if(user.getUsername().equals("")){
        	  model.addAttribute("msg", "请输入用户名后再进行提交");  
        	  return "register";
          }
          if(user.getMail().equals("")){
        	  model.addAttribute("msg", "请输入您的邮箱后再进行提交");  
        	  return "register";
          }
          if(user.getPassword().equals("")){
        	  model.addAttribute("msg", "请输入密码后再进行提交");  
        	  return "register";
          }
        System.out.println("注册成功！用户名："+user.getUsername()+"  密码："+user.getPassword()+"  邮箱："+user.getMail());  
      user.setUsername(user.getUsername());
      user.setPassword(user.getPassword());
      user.setMail(user.getMail());
      user.setPosition(user.getPosition());
      user.setPhone(user.getPhone());
      user.setNickname(user.getNickname());
       userService.regist(user);  
       model.addAttribute("msg", "注册成功");  
       System.out.println(model);        
        //注册成功后跳转success.jsp页面  
        return "success";  
    }  
    @RequestMapping("update")  
    public String update(User user,Model model){ 
    	
    		 user.setUsername(user.getUsername());
    	      user.setPassword(user.getPassword());
    	       userService.update(user);  
    	       model.addAttribute("msg", "修改成功");  
    	       System.out.println("用户名为：  "+user.getUsername()+" 的用户修改密码修改成功");
    	       System.out.println(model);      
    	        
    	        return "success";  
    	
    	 
    }  
   
}
