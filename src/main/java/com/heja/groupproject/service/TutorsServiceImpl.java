package com.heja.groupproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.heja.groupproject.model.Tutors;
import com.heja.groupproject.repository.TutorsRepository;

@Service
@Transactional
public class TutorsServiceImpl implements TutorsService {
	
	@Autowired
	private TutorsRepository tutorsRepository;
	
	
	@Override
	public void addTutor(Tutors tutors) {
		tutorsRepository.addTutor(tutors);
	}

	@Override
	public void updateTutor(Tutors tutors) {
		tutorsRepository.updateTutor(tutors);
	}

	@Override
	public void deleteTutor(int id) {
		tutorsRepository.deleteTutor(id);
	}

	@Override
	public Tutors getTutorById(int id) {
		return tutorsRepository.getTutorById(id);
	}

	@Override
	public List<Tutors> allTutors() {
		return tutorsRepository.allTutors();
	}

}
