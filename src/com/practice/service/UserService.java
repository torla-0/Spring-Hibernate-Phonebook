package com.practice.service;

import java.util.List;

import javax.persistence.Entity;

import com.practice.entity.User;


public interface UserService {
	
	public List<User> getUsers (int number);

	public void saveUser(User user);

	public User getUser(int id);

	public void deleteUser(User user);

	
	
}
