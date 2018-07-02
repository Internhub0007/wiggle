package com.heja.groupproject.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heja.groupproject.model.Class;

@Repository
public class ClassRepositoryImpl implements ClassRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addClass(Class class1) {
		getSession().merge(class1);
	}

	@Override
	public void updateClass(Class class1) {
		getSession().merge(class1);
	}

	@Override
	public void deleteClass(int id) {
		Class class1 = getClassById(id);
		if (class1 != null) {
			getSession().delete(class1);
		}
	}

	@Override
	public Class getClassById(int id) {
		return (Class) getSession().get(Class.class, id);
	}

	@Override
	public List<Class> allClasses() {
		return getSession().createCriteria(Class.class).list();
	}

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}

}
