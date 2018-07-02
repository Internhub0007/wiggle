package com.heja.groupproject.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heja.groupproject.model.Students;
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
	public Tutors getTutorByEmail(String email) {
		Criteria criteria = getSession().createCriteria(Tutors.class);
		Tutors tutors = (Tutors) criteria.add(Restrictions.eq("email", email)).uniqueResult();
		return tutors;
	}

	@Override
	public List<Tutors> allTutors() {
		return getSession().createCriteria(Tutors.class).list();
	}

	@Override
	public boolean checkLogin(String email, String password) {
		boolean isLogin = false;
		Criteria criteria = getSession().createCriteria(Tutors.class);
		Tutors tutors = (Tutors) criteria.add(Restrictions.eq("email", email))
				.add(Restrictions.eq("password", password)).uniqueResult();
		if (tutors != null) {
			isLogin = true;
		}
		return isLogin;
	}

	@Override
	public Tutors checkEmail(String email) {
		Criteria criteria = getSession().createCriteria(Tutors.class);
		Tutors tutors = (Tutors) criteria.add(Restrictions.eq("email", email)).uniqueResult();
		return tutors;
	}

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}

}
