package com.jelly.shiroMySQLDemo.service.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jelly.shiroMySQLDemo.model.TApplication;
import com.jelly.shiroMySQLDemo.model.mapper.Tapplicationmapper;
import com.jelly.shiroMySQLDemo.service.Tapplicationservice;

@Service
@Transactional
public class TapplicationserviceImpl implements Tapplicationservice{
	
	@Resource
	private Tapplicationmapper tapplicationmapper;

	@Override
	public void save(TApplication tapplication) {
		 tapplicationmapper.save(tapplication);
	}

	@Override
	public List<TApplication> getall() {
		// TODO Auto-generated method stub
		return tapplicationmapper.getall();
	}

	@Override
	public TApplication find(int id) {
		// TODO Auto-generated method stub
		return tapplicationmapper.find(id);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		tapplicationmapper.delete(id);
	}

	@Override
	public void update(TApplication tapplication) {
		// TODO Auto-generated method stub
		tapplicationmapper.update(tapplication);
	}

	@Override
	public List<TApplication> getappname() {
		// TODO Auto-generated method stub
		return tapplicationmapper.getappname();
	}

}
