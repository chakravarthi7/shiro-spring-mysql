package com.jelly.shiroMySQLDemo.service.serviceImpl;

import java.util.List;

import com.jelly.shiroMySQLDemo.model.TRolePermission;

public interface Trolperservice {
	
	public void save(TRolePermission trolepermission);
	
	public List<TRolePermission> selectperid(int roleId);
	
	public void deletebyroleid(int roleId);
	
	public List<TRolePermission> getall();
	
	public void deletebyperid(int permissionId);

}
