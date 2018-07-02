package com.heja.groupproject.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heja.groupproject.model.Assignment;

@Repository
public class AssignemntRepositoryImpl implements AssignemntRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addAssignment(Assignment assignment) {
		getSession().merge(assignment);
	}

	@Override
	public void updateAssignment(Assignment assignment) {
		getSession().merge(assignment);
	}

	@Override
	public void deleteAssignment(int id) {
		Assignment assignment = getAssignemntById(id);
		if(assignment != null) {
		getSession().delete(assignment);
		}
	}

	@Override
	public Assignment getAssignemntById(int id) {
		return (Assignment) getSession().get(Assignment.class, id);
	}

	@Override
	public List<Assignment> allAssignments() {
		return getSession().createCriteria(Assignment.class).list();
	}

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}

}
