package com.heja.groupproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.heja.groupproject.model.Students;
import com.heja.groupproject.repository.StudentRepository;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public void addStudent(Students students) {
		studentRepository.addStudent(students);
	}

	@Override
	public void updateStudent(Students student) {
		studentRepository.updateStudent(student);
	}

	@Override
	public void deleteStudent(int id) {
		studentRepository.deleteStudent(id);

	}

	@Override
	public Students getStudentById(int id) {
		return studentRepository.getStudentById(id);
	}

	@Override
	public Students getStudentByEmail(String email) {
		return studentRepository.getStudentByEmail(email);
	}

	@Override
	public List<Students> allStudents() {

		return studentRepository.allStudents();
	}

	@Override
	public boolean checkLogin(String email, String password) {
		return studentRepository.checkLogin(email, password);
	}

	@Override
	public Students checkEmail(String email) {
		return studentRepository.checkEmail(email);
	}

}
