package com.heja.groupproject.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heja.groupproject.model.Modules;

@Repository
public class ModulesRepositoryImpl implements ModulesRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addModule(Modules modules) {
		getSession().merge(modules);
	}

	@Override
	public void updateModule(Modules modules) {
		getSession().merge(modules);
	}

	@Override
	public void deleteModule(int id) {
		Modules modules = getModuleById(id);
		if (modules != null) {
			getSession().delete(modules);
		}
	}

	@Override
	public Modules getModuleById(int id) {
		return (Modules) getSession().get(Modules.class, id);
	}

	@Override
	public List<Modules> allmodules() {
		return getSession().createCriteria(Modules.class).list();
	}

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}

}
