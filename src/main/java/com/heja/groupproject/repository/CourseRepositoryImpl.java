package com.heja.groupproject.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heja.groupproject.model.Course;

@Repository
public class CourseRepositoryImpl implements CourseRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addCourse(Course course) {
		getSession().merge(course);
	}

	@Override
	public void updateCourse(Course course) {
		getSession().merge(course);
	}

	@Override
	public void deleteCourse(int id) {
		Course course = getCourseById(id);
		if (course != null) {
			getSession().delete(course);
		}
	}

	@Override
	public Course getCourseById(int id) {
		return (Course) getSession().get(Course.class, id);
	}

	@Override
	public List<Course> allCourse() {
		return getSession().createCriteria(Course.class).list();
	}

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;

	}
}
