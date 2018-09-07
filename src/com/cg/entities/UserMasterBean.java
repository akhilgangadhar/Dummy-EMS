package com.cg.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="User_Master")
public class UserMasterBean {

	@Id

	@Column(name="UserId")
	private String userId;
	
	@NotEmpty(message="Please Enter valid UserName & Password")
	@Column(name="UserName")
	private String userName;
	
	@Column(name="UserPassword")
	private String userpassword;
	
	@Column(name="UserType")
	private String userType;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return userpassword;
	}
	public void setPassword(String password) {
		this.userpassword = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
}
