package com.jelly.shiroMySQLDemo.service.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jelly.shiroMySQLDemo.model.TUser;
import com.jelly.shiroMySQLDemo.model.mapper.Tusermapper;
import com.jelly.shiroMySQLDemo.service.Tuserservice;

@Service
@Transactional
public class TuserserviceImpl implements Tuserservice{
	
	@Resource
	private Tusermapper tusermapper;

	@Override
	public List<TUser> getall() {
		// TODO Auto-generated method stub
		return tusermapper.getall();
	}

	@Override
	public void save(TUser tuser) {
		// TODO Auto-generated method stub
		tusermapper.save(tuser);
	}

	@Override
	public void update(TUser tuser) {
		// TODO Auto-generated method stub
		tusermapper.update(tuser);
	}

	@Override
	public TUser find(int id) {
		// TODO Auto-generated method stub
		 return tusermapper.find(id);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		tusermapper.delete(id);
	}

}
