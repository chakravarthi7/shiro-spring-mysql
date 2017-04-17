package com.jelly.shiroMySQLDemo.model.mapper;

import java.util.List;

import com.jelly.shiroMySQLDemo.model.TPermission;


public interface Tpermissionmapper {
	
	public List<TPermission> getall();
	
	public void save(TPermission tpermission);
	
	public void update(TPermission tpermission);

	public TPermission find(int id);
	
	public void delete(int id);

}
