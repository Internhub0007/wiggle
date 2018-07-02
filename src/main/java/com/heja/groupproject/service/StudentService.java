package com.heja.groupproject.service;

import java.util.List;

import com.heja.groupproject.model.Students;

public interface StudentService {
	void addStudent(Students students);

	void updateStudent(Students student);

	void deleteStudent(int id);

	Students getStudentById(int id);

	Students getStudentByEmail(String email);
	List<Students> allStudents();

	boolean checkLogin(String email, String password);

	Students checkEmail(String email);
}
