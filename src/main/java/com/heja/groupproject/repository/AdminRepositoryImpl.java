package com.heja.groupproject.repository;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heja.groupproject.model.Admin;

@Repository
public class AdminRepositoryImpl implements AdminRepository {
		
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean checkLogin(String username, String password) {
		boolean isLogin = false;
		Criteria criteria = getSession().createCriteria(Admin.class);
		Admin admin = (Admin) criteria.add(Restrictions.eq("userName", username)).add(Restrictions.eq("password", password)).uniqueResult();
		if(admin != null) {
			isLogin = true;
		}
		return isLogin;
	}
	
	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if(session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}

}
