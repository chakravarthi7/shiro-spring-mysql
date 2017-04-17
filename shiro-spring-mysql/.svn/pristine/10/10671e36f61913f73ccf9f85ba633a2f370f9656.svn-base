package com.jelly.shiroMySQLDemo.service.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jelly.shiroMySQLDemo.model.TApplicationRole;
import com.jelly.shiroMySQLDemo.model.mapper.Tapplicationrolemapper;
import com.jelly.shiroMySQLDemo.service.Tapplicationroleservice;

@Service
@Transactional
public class TapplicationroleserviceImpl implements Tapplicationroleservice {
	
	@Resource
	private Tapplicationrolemapper tapplicationrolemapper;

	@Override
	public void save(TApplicationRole tapplicationrole) {
		// TODO Auto-generated method stub
		tapplicationrolemapper.save(tapplicationrole);
	}

	@Override
	public void delete(int appid) {
		// TODO Auto-generated method stub
		tapplicationrolemapper.delete(appid);
	}

	@Override
	public List<TApplicationRole> getrolbyappid(int appid) {
		// TODO Auto-generated method stub
		return tapplicationrolemapper.getrolbyappid(appid);
	}
	

}
