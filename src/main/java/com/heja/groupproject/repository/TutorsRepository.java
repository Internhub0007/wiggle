package com.heja.groupproject.repository;

import java.util.List;

import com.heja.groupproject.model.Tutors;

public interface TutorsRepository {
	
	
	void addTutor(Tutors tutors);
	
	void updateTutor(Tutors tutors);
	
	void deleteTutor(int id);
	
	Tutors getTutorById(int id);
	
	List<Tutors> allTutors();
		
}
