package com.jelly.shiroMySQLDemo.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jelly.shiroMySQLDemo.model.TPermission;
import com.jelly.shiroMySQLDemo.model.TRole;
import com.jelly.shiroMySQLDemo.model.TRolePermission;
import com.jelly.shiroMySQLDemo.service.Tpermissionservice;
import com.jelly.shiroMySQLDemo.service.Troleservice;
import com.jelly.shiroMySQLDemo.service.serviceImpl.Trolperservice;

@Controller
@RequestMapping("/roleper")
public class RolePerController {
	
	@Autowired
	Troleservice troleservice; 
	
	@Autowired
	Tpermissionservice tpermissionservice;
	
	@Autowired
	Trolperservice trolperservice;
	
	@RequestMapping("/add")
    public String userdetails(HttpServletRequest request, HttpServletResponse response,ModelMap model){
    	
    	List<TRole> tr=troleservice.getall();
    	model.addAttribute("trvalues",tr);
    	
    	List<TPermission> tp=tpermissionservice.getall();
    	model.addAttribute("tpvalues",tp);
    	return "roleper";

    }
 
	@RequestMapping("/submit")
	public String valsubmit(@RequestParam int roleId,@RequestParam List<Integer> permissionId,TRolePermission trolepermission){
		
	
		System.out.println(roleId);
		System.out.println(permissionId);
		
		if(roleId !=0 && permissionId != null ){
			trolperservice.deletebyroleid(roleId);
		
			for (Integer S:permissionId){
			
				trolepermission.setRoleId(roleId);
				trolepermission.setPermissionId(S);
				trolperservice.save(trolepermission);
				
			}
			
			
		}
		
	
		return "roleper";
		
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/checkstate/{roleId}", method=RequestMethod.GET)
	public @ResponseBody JSONArray checkstate(@PathVariable int roleId){
	System.out.println(roleId);
		System.out.println("Hello");
		

	       
		JSONArray perJsonarray = new JSONArray();
		List<TRolePermission> checkval=trolperservice.selectperid(roleId) ;
		System.out.println(checkval);
		for(TRolePermission i:checkval){
			perJsonarray.add(i.getPermissionId());
			System.out.println(i.getPermissionId());
		}
		System.out.println(perJsonarray); 
		
		return perJsonarray;
	
	}
	
	@RequestMapping("/details")
	public String details(ModelMap model){
		
		model.addAttribute("rolperval",trolperservice.getall());
		model.addAttribute("rolval",troleservice.getall());
		model.addAttribute("pervalues",tpermissionservice.getall());
		
		return "rolperdetails";
		
	}
}
