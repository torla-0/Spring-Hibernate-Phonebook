package com.practice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.practice.dao.UserDAO;
import com.practice.entity.User;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired	
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public List<User> getUsers(int number) {
		
		return userDAO.getUsers(number);
	}

	@Override
	@Transactional
	public void saveUser(User user) {
		
		userDAO.saveUser(user);
	}

	@Override
	@Transactional
	public User getUser(int id) {
		
		return userDAO.getUser(id);
	}

	@Override
	@Transactional
	public void deleteUser(User user) {
		userDAO.deleteUser(user);
		
	}






}
