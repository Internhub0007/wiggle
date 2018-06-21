package com.heja.groupproject.repository;

import java.util.List;

import com.heja.groupproject.model.Students;

public interface StudentRepository {
	
	void addStudent(Students students);
	
	void updateStudent(Students student);
	
	void deleteStudent(int id);
	
	Students getStudentById(int id);
	
	List<Students> allStudents();
}
