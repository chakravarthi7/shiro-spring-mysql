package com.jelly.shiroMySQLDemo.service.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jelly.shiroMySQLDemo.model.TRolePermission;
import com.jelly.shiroMySQLDemo.model.mapper.Trolpermapper;

@Service
@Transactional
public class TrolperserviceImpl implements Trolperservice {
	
	@Resource
	private Trolpermapper trolpermapper;

	@Override
	public void save(TRolePermission trolepermission) {
		// TODO Auto-generated method stub
		trolpermapper.save(trolepermission);
	}

	@Override
	public List<TRolePermission> selectperid(int roleId) {
		// TODO Auto-generated method stub
		return trolpermapper.selectperid(roleId);
	}

	@Override
	public void deletebyroleid(int roleId) {
		// TODO Auto-generated method stub
		trolpermapper.deletebyroleid(roleId);
	}

	@Override
	public List<TRolePermission> getall() {
		// TODO Auto-generated method stub
		return trolpermapper.getall();
	}

	@Override
	public void deletebyperid(int permissionId) {
		// TODO Auto-generated method stub
		trolpermapper.deletebyperid(permissionId);
	}

}
