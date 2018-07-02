package com.heja.groupproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.heja.groupproject.model.Assignment;
import com.heja.groupproject.repository.AssignemntRepository;

@Service
@Transactional
public class AssignemntServiceImpl implements AssignemntService {
	
	@Autowired
	private AssignemntRepository assignmentRepository;
		
	@Override
	public void addAssignment(Assignment assignment) {
		assignmentRepository.addAssignment(assignment);
	}

	@Override
	public void updateAssignment(Assignment assignment) {
assignmentRepository.updateAssignment(assignment);		
	}

	@Override
	public void deleteAssignment(int id) {
assignmentRepository.deleteAssignment(id);		
	}

	@Override
	public Assignment getAssignemntById(int id) {
		return assignmentRepository.getAssignemntById(id);
	}

	@Override
	public List<Assignment> allAssignments() {
		return assignmentRepository.allAssignments();
	}

}
