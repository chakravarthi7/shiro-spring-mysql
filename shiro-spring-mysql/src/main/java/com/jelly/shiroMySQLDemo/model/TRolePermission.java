
/**
* Author:Collonn, Email:collonn@126.com, QQ:195358385
*/
package com.jelly.shiroMySQLDemo.model;

import java.math.BigDecimal;
import java.util.Date;

public class TRolePermission {
	public static final String Insert = "com.jelly.shiroMySQLDemo.model.TRolePermission.Insert";
	public static final String Update = "com.jelly.shiroMySQLDemo.model.TRolePermission.Update";
	public static final String UpdateWithNull = "com.jelly.shiroMySQLDemo.model.TRolePermission.UpdateWithNull";
	public static final String DeleteByPk = "com.jelly.shiroMySQLDemo.model.TRolePermission.DeleteByPk";
	public static final String DeleteByPojo = "com.jelly.shiroMySQLDemo.model.TRolePermission.DeleteByPojo";
	public static final String Select = "com.jelly.shiroMySQLDemo.model.TRolePermission.Select";
	public static final String SelectCount = "com.jelly.shiroMySQLDemo.model.TRolePermission.SelectCount";
	public static final String SelectByPk = "com.jelly.shiroMySQLDemo.model.TRolePermission.SelectByPk";
	
	private int id;
	
	private int roleId;
	
	private int permissionId;


	public TRolePermission setId (int id) {
		this.id = id;
		return this;
	}
	
	public int getId () {
		return this.id;
	}

	public TRolePermission setRoleId (int roleId) {
		this.roleId = roleId;
		return this;
	}
	
	public int getRoleId () {
		return this.roleId;
	}

	public TRolePermission setPermissionId (int permissionId) {
		this.permissionId = permissionId;
		return this;
	}
	
	public int getPermissionId () {
		return this.permissionId;
	}

}