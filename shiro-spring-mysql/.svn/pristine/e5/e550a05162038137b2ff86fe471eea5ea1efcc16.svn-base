package com.jelly.shiroMySQLDemo.service.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jelly.shiroMySQLDemo.model.TRole;
import com.jelly.shiroMySQLDemo.model.mapper.Trolemapper;
import com.jelly.shiroMySQLDemo.service.Troleservice;

@Service
@Transactional
public class TroleserviceImpl implements Troleservice{
	
	@Resource
	private Trolemapper trolemapper;

	@Override
	public List<TRole> getall() {
		// TODO Auto-generated method stub
		return trolemapper.getall();
	}

	@Override
	public void save(TRole trole) {
		// TODO Auto-generated method stub
		trolemapper.save(trole);
	}

	@Override
	public void update(TRole trole) {
		// TODO Auto-generated method stub
		trolemapper.update(trole);
	}

	@Override
	public TRole find(int id) {
		// TODO Auto-generated method stub
		return trolemapper.find(id);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		trolemapper.delete(id);
	}
	
	

}
