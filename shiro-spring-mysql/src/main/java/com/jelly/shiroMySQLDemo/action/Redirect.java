package com.jelly.shiroMySQLDemo.action;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jelly.shiroMySQLDemo.model.TApplicationRole;
import com.jelly.shiroMySQLDemo.model.TRole;
import com.jelly.shiroMySQLDemo.model.TUser;
import com.jelly.shiroMySQLDemo.service.Tapplicationroleservice;
import com.jelly.shiroMySQLDemo.service.Tapplicationservice;
import com.jelly.shiroMySQLDemo.service.Troleservice;

@Controller
public class Redirect {
	
		@Autowired
	   Tapplicationservice tapplicationservice;
		
		@Autowired
		Tapplicationroleservice tapplicationroleservice;
		
		@Autowired
		Troleservice troleservice; 
		
		@RequestMapping("/redirect") 
	    public String redirect(ModelMap model){

	model.addAttribute("applications",tapplicationservice.getall());	
	System.out.println("in test");
	        return "first"; 
	    }  
    
		
		@RequestMapping("/frameindex") 
	    public String frameindex(ModelMap model){

	model.addAttribute("applications",tapplicationservice.getall());	
	System.out.println("in test");
	        return "frameindex"; 
	    } 
		
		@RequestMapping("/getuserdetails/{id}") 
	    public String getuserdetails(@PathVariable int id,ModelMap model){
		System.out.println(id);
			TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
			
		model.addAttribute("username", user.getUsername());
			 
		
			model.addAttribute("appplicationobj",tapplicationservice.find(id));
		model.addAttribute("specificroles",tapplicationroleservice.getrolbyappid(id) );
			model.addAttribute("rolevalues",troleservice.getall() );
	        return "alldetails"; 
	    }   
}
