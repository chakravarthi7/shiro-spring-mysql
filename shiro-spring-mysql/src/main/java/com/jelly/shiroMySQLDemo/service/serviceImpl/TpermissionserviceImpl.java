package com.jelly.shiroMySQLDemo.service.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jelly.shiroMySQLDemo.model.TPermission;
import com.jelly.shiroMySQLDemo.model.mapper.Tpermissionmapper;
import com.jelly.shiroMySQLDemo.service.Tpermissionservice;

@Service
@Transactional
public class TpermissionserviceImpl implements Tpermissionservice{
	
	@Resource
	private Tpermissionmapper tpermissionmapper;

	@Override
	public List<TPermission> getall() {
		// TODO Auto-generated method stub
		return tpermissionmapper.getall();
	}

	@Override
	public void save(TPermission tpermission) {
		// TODO Auto-generated method stub
		tpermissionmapper.save(tpermission);
	}

	@Override
	public void update(TPermission tpermission) {
		// TODO Auto-generated method stub
		tpermissionmapper.update(tpermission);
	}

	@Override
	public TPermission find(int id) {
		// TODO Auto-generated method stub
		return tpermissionmapper.find(id);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		tpermissionmapper.delete(id);
	}

}
