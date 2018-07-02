package com.heja.groupproject.repository;

import java.util.List;

import com.heja.groupproject.model.Tutors;

public interface TutorsRepository {
	
	
	void addTutor(Tutors tutors);
	
	void updateTutor(Tutors tutors);
	
	void deleteTutor(int id);
	
	Tutors getTutorById(int id);
	
	Tutors getTutorByEmail(String email);
	
	List<Tutors> allTutors();
	
	boolean checkLogin(String email, String password);
	
	Tutors checkEmail(String email);
}
