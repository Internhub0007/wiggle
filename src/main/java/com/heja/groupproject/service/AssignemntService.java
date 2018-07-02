package com.heja.groupproject.service;

import java.util.List;

import com.heja.groupproject.model.Assignment;

public interface AssignemntService {

	void addAssignment(Assignment assignment);

	void updateAssignment(Assignment assignment);

	void deleteAssignment(int id);

	Assignment getAssignemntById(int id);

	List<Assignment> allAssignments();
}
