package com.jelly.shiroMySQLDemo.model.mapper;

import java.util.List;

import com.jelly.shiroMySQLDemo.model.TApplication;

public interface Tapplicationmapper {
	
	public void save(TApplication tapplication);
	
	public List<TApplication> getall(); 
	
	public TApplication find(int id);
	
	public void delete(int id);
	 
	public void update(TApplication tapplication);
	
	public List<TApplication> getappname();

}
 