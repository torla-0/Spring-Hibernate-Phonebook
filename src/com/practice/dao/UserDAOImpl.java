package com.practice.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.support.XmlWebApplicationContext;

import com.practice.entity.User;



@Repository
public class UserDAOImpl implements UserDAO {

	
	@Autowired
	SessionFactory sessionFactory;
	
	
	private int max = 10;
	
	@Override
	public List<User> getUsers(int number) {

		// create session and get users
		Session session = sessionFactory.getCurrentSession();
		
		// get users from database
		Query<User> query = session.createQuery("from User u where u.isDeleted = false order by u.lastName ", User.class);
		int start = (number - 1) * max;
		query.setFirstResult(start);
		query.setMaxResults(max);
		
		// convert query
		List<User> users = query.getResultList();		
		return users;
	
	}

	@Override
	public void saveUser(User user) {
		Session session = sessionFactory.getCurrentSession();		
		session.saveOrUpdate(user);				
	}

	@Override
	public User getUser(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		User user = session.get(User.class, id);	
		return user;
	}
	
	@Override
	public void deleteUser(User user) {
		
		Session session = sessionFactory.getCurrentSession();
		//session.delete(user); <-- real delete function
		// this is flag delete, record is in base but not displayed
		Query query = session.createQuery("update User u set u.isDeleted = true where u.id = :id").setParameter("id", user.getId());
		query.executeUpdate();
	}


}
