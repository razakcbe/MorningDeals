/**
 * 
 */
package com.jrt.deals.vo;

import java.io.Serializable;

/**
 * @author Prakasa Totta
 *
 */
public class UserVO implements Serializable{

	private Integer userId;
	private String userName;
	private String userPwd;
	private String userEmailId;
	private Integer roleId;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd == null?"12345":userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserEmailId() {
		return userEmailId;
	}
	public void setUserEmailId(String userEmailId) {
		this.userEmailId = userEmailId;
	}
	public Integer getRoleId() {
		return roleId == null?1003:roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}	
	
	
	public boolean isAdminUser() {
		return roleId == 1001? true: false;
	}
}
