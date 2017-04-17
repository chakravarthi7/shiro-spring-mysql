package com.jelly.shiroMySQLDemo.action;

import java.util.List;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jelly.shiroMySQLDemo.model.TUser;
import com.jelly.shiroMySQLDemo.service.Tuserservice;

@Controller
@RequestMapping("/user")
public class Useradmin {
	
       @Autowired
	   Tuserservice tuserservice;
	
	    @RequestMapping("/register")
	    public String userregister(@ModelAttribute(value="tuser") TUser tuser,ModelMap model){
	    	
		 	
	    	String UN=tuser.getUsername();
	    	
	    		String PW= tuser.getPassword();
	    		//tuser.setSalt(new SimpleByteSource(tuser.getSalt()).toString());
	    		 SimpleHash simpleHash = new SimpleHash("MD5", PW, "abc", 1);
	    	  
	    	tuser.setPassword((simpleHash).toString());
	    	tuser.setSalt("abc");
	    	
	 List<TUser> getallvalues=tuserservice.getall();
	
	
	 System.out.println(getallvalues);
		 if(getallvalues != null){
			 int flag=0; 
		  for(TUser s:getallvalues){
			
			  if(s.getUsername().equals(UN) ){
				  flag=5;
				  model.addAttribute("msg", "User Name Already Exists");
				  break;
			  }}
		  
		 	if(flag!=5){
			 tuserservice.save(tuser);
			}
					  
		  }
		 	
		 	return "redirect:/user/details";
	    }
	    
	    
	   
	    

	    @RequestMapping("/details")
	    public String userdetails(ModelMap model){
	    	
	    	List<TUser> getallvalues=tuserservice.getall();
	    	model.addAttribute("uservalues", getallvalues);
	    	return "userdetails";

	    }

	    
	    @RequestMapping(value="/delete/{id}")
		public String delete(@PathVariable int id,ModelMap model){
			 	System.out.println("In delete T user");
	        	tuserservice.delete(id);
	        	
			  return "redirect:/user/details";
			}
	    
	    @RequestMapping(value="/view/{id}")
	  		public String view(@PathVariable int id,ModelMap model){
	    	System.out.println("In View Controller");
	    	
	  	        model.addAttribute("viewobject", tuserservice.find(id));
	  			  return "userview";
	  			}
	    
	    @RequestMapping(value="/update/{id}")
  		public String update(@PathVariable int id,ModelMap model){
	    	System.out.println("In update Controller");
	   	   model.addAttribute("objectvalues",tuserservice.find(id));
	    	
  			  return "userupdate";
  			}
	    @RequestMapping(value="/edit")
  		public String edit(@ModelAttribute(value="tuser") TUser tuser,ModelMap model){
	    
	    	
	    	
	    	String UN=tuser.getUsername();
	    
	    		String PW= tuser.getPassword();

	    		//tuser.setSalt(new SimpleByteSource(tuser.getSalt()).toString());
	    		 SimpleHash simpleHash = new SimpleHash("MD5", PW, "abc", 1);
	    	  
	    	tuser.setPassword((simpleHash).toString());
	    	tuser.setSalt("abc");
	    
	 List<TUser> getallvalues=tuserservice.getall();
	

	 System.out.println(getallvalues);
	 
		 if(getallvalues != null){

			 int flag=0; 
		  for(TUser s:getallvalues){
		
			  if(s.getUsername().equals(UN) ){
				  flag=5;
				  model.addAttribute("msg", "User Name Already Exists");
				  break;
			  }}

		 	if(flag!=5){

			 tuserservice.update(tuser);
	}
					  
		  }	
		 	
		 	
  		  return "redirect:/user/details";
  			}
}
