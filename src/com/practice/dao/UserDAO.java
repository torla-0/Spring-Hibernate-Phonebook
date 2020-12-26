package com.practice.dao;

import java.util.List;

import com.practice.entity.User;

public interface UserDAO {

	public List<User> getUsers(int id);

	public void saveUser(User user);

	public User getUser(int id);

	public void deleteUser(User user);

}
