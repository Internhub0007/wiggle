package com.heja.groupproject.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heja.groupproject.model.Students;

@Repository
public class StudentRepositoryImpl implements StudentRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addStudent(Students students) {
		getSession().merge(students);
	}

	@Override
	public void updateStudent(Students student) {
		getSession().merge(student);
	}

	@Override
	public void deleteStudent(int id) {
		Students students = getStudentById(id);
		if (students != null) {
			getSession().delete(students);
		}
	}

	@Override
	public Students getStudentById(int id) {
		return (Students) getSession().get(Students.class, id);
	}

	@Override
	public List<Students> allStudents() {
		return getSession().createCriteria(Students.class).list();
	}

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;

	}
}
