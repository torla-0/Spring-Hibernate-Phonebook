package com.practice.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Login {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="login_id")
	private int id;
	
	
	@Column(name="login_username")
	private String loginUsername;
	
	@Column(name="login_role_id")
	private String loginRole;
	

}
