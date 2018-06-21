package com.heja.groupproject.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heja.groupproject.model.Tutors;

@Repository
public class TutorsRepositoryImpl implements TutorsRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addTutor(Tutors tutors) {
		getSession().merge(tutors);
	}

	@Override
	public void updateTutor(Tutors tutors) {
		getSession().merge(tutors);
	}

	@Override
	public void deleteTutor(int id) {
		Tutors tutors = getTutorById(id);
		getSession().delete(tutors);
	}

	@Override
	public Tutors getTutorById(int id) {
		return (Tutors) getSession().get(Tutors.class, id);
	}

	@Override
	public List<Tutors> allTutors() {
		return getSession().createCriteria(Tutors.class).list();
	}

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}
}
