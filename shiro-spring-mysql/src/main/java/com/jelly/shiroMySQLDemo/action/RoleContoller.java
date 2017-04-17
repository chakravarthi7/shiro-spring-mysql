package com.jelly.shiroMySQLDemo.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jelly.shiroMySQLDemo.model.TRole;
import com.jelly.shiroMySQLDemo.service.Troleservice;

@Controller
@RequestMapping("/role")
public class RoleContoller {
	
	@Autowired
	Troleservice troleservice; 
	
	@RequestMapping("/add")
	  public String roleadd(@ModelAttribute(value="trole") TRole trole,ModelMap model){
		troleservice.save(trole);
		return "redirect:/role/details";
		
	
	}
	
	@RequestMapping("/details")
	  public String roledetails(ModelMap model){

		
		List<TRole> roledetails = troleservice.getall();
	
		model.addAttribute("roles", roledetails);
		
		return "roledetails";
		
	}
	
	   @RequestMapping(value="/delete/{id}")
			public String delete(@PathVariable int id,ModelMap model){
				 	System.out.println("In delete T user");
		        	troleservice.delete(id);
		        	
				  return "redirect:/role/details";
				}
		    
	   @RequestMapping(value="/view/{id}")
 		public String view(@PathVariable int id,ModelMap model){
   	System.out.println("In View Controller");
   	
 	        model.addAttribute("viewobject", troleservice.find(id));
 			  return "roleview";
 			}
	   
	   @RequestMapping(value="/update/{id}")
 		public String update(@PathVariable int id,ModelMap model){
	   
	    	
	    
	   	   model.addAttribute("objectvalues",troleservice.find(id));
	    	
 			  return "roleupdate";
 			}
	   @RequestMapping(value="/edit")
	 		public String edit(@ModelAttribute(value="trole") TRole trole,ModelMap model){
		   System.out.println("Helloasd as d ");
		   System.out.println(trole.getId());
		   System.out.println(trole.getRoName());
		   troleservice.update(trole);
				return "redirect:/role/details";
		   
	   
	   }
}
