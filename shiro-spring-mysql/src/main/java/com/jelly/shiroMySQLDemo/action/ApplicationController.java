package com.jelly.shiroMySQLDemo.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jelly.shiroMySQLDemo.model.TApplication;
import com.jelly.shiroMySQLDemo.model.TApplicationRole;
import com.jelly.shiroMySQLDemo.service.Tapplicationroleservice;
import com.jelly.shiroMySQLDemo.service.Tapplicationservice;
import com.jelly.shiroMySQLDemo.service.Troleservice;

@Controller
@RequestMapping("/application")
public class ApplicationController {
	
	@Autowired
	   Tapplicationservice tapplicationservice;
	
	@Autowired
	   Troleservice troleservice;
	
	@Autowired
	   Tapplicationroleservice tapplicationroleservice;
	
	 @RequestMapping("/page")
	    public String page(ModelMap model){
	      System.out.println("in application page");
	      model.addAttribute("rolevalue",troleservice.getall());
	        return "appadd";
	    }
	 
	 @RequestMapping("/add")
	    public String add(@ModelAttribute(value="tapplication")TApplication tapplication,ModelMap model,@RequestParam List<Integer> roleId,TApplicationRole tapplicationrole){
	
	      int flag=0;
	  List<TApplication> urlval=tapplicationservice.getappname();
	  
	  for(TApplication S:urlval){
	
		  if(tapplication.getAppname().equals(S.getAppname())){
			 System.out.println("Strings are equal");
				flag=5;
			  model.addAttribute("Msg", "Application Name has been already Reserved");
		  }
	  }
	  if(flag !=5){
		 tapplicationservice.save(tapplication);
		
		  if(roleId != null && tapplication != null){
			  System.out.println(tapplication.getId());
			   for (Integer rolval:roleId){
				   tapplicationrole.setAppid(tapplication.getId());
				   tapplicationrole.setRoleid(rolval);
			 tapplicationroleservice.save(tapplicationrole);
			    	System.out.println(rolval+"save here");
			    }
		  }
		  return "redirect:/application/details";
	  }else{
		  return "appadd";
	  } 
	        
	  
	     
	    } 

	 @RequestMapping("/details")
	    public String details(ModelMap model){
		 
		 model.addAttribute("values", tapplicationservice.getall());
	      
	        return "appdetails";
	    } 
	 
	 @RequestMapping("/view/{id}")
	    public String view(@PathVariable int id,ModelMap model){
		
		model.addAttribute("appvalues",tapplicationservice.find(id) );
	      
		 return "appview";
	    } 
	 
	 @RequestMapping("/delete/{id}")
	    public String delete(@PathVariable int id){
		
		 tapplicationservice.delete(id);
		 tapplicationroleservice.delete(id);
		 return "redirect:/application/details";
	    } 
	 
	 @RequestMapping("/update/{id}")
	    public String update(@PathVariable int id,ModelMap model){

		model.addAttribute("appvalues",tapplicationservice.find(id));
	    model.addAttribute("rolevalue", troleservice.getall()); 
	  
	   List<TApplicationRole> s = tapplicationroleservice.getrolbyappid(id);
	  // List<Integer> l = new ArrayList<>();
	   
	    for(TApplicationRole a:s){
	    	//l.add(a.getRoleid());
	    System.out.println(a.getRoleid());
	    }
	   // System.out.println(l);
	   model.addAttribute("selectrolval",tapplicationroleservice.getrolbyappid(id));
	    
		 return "appupdate";
	    } 
	 
	 
	 @RequestMapping("/edit/{id}")
	    public String edit(@PathVariable int id,@ModelAttribute(value="tapplication")TApplication tapplication,@RequestParam List<Integer> roleId,ModelMap model,TApplicationRole tapplicationrole ){
		System.out.println(roleId);
		 int flag=0;
		 System.out.println(id);
		
		  List<TApplication> urlval=tapplicationservice.getappname();
		  
		  for(TApplication S:urlval){
			if(id !=S.getId()){
			  if(tapplication.getAppname().equals(S.getAppname())){
				 System.out.println("Strings are equal");
					flag=5;
				  model.addAttribute("Msg", "Application Name has been already Reserved");
			  }}
		  }
		  if(flag !=5){
			
		 	 tapplicationservice.update(tapplication);
		 	 List<TApplicationRole> rolval= tapplicationroleservice.getrolbyappid(id);
		 	 for(Integer roleid:roleId){
		 		 System.out.println("roleid"+roleid);
		 		int flag1=0;
		 	 for (TApplicationRole A:rolval){
		 		
		 		System.out.println("Appid"+A.getRoleid());
		 			 if(roleid==A.getRoleid()){
		 				flag1=5;
		 				System.out.println(flag1);
		 				 System.out.println("Set the values and break");
		 				break;
		 			 }  
		 		 }
		 	 if(flag1 !=5){
		 		tapplicationrole.setAppid(id);
		 		tapplicationrole.setRoleid(roleid);
		 		tapplicationroleservice.save(tapplicationrole);
			 	}
		 	 }
		 	 
			  return "redirect:/application/details"; 
		}else{
			  return "appupdate";
		  } 
		   
		 
		
		
	    } 
	  
}
