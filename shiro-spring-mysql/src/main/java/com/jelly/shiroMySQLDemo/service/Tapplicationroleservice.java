package com.jelly.shiroMySQLDemo.service;

import java.util.List;

import com.jelly.shiroMySQLDemo.model.TApplicationRole;

public interface Tapplicationroleservice {
	
	public void save(TApplicationRole tapplicationrole);
	
	public void delete(int appid);
	
	public List<TApplicationRole> getrolbyappid(int appid);

}
