package com.heja.groupproject.repository;

import java.util.List;

import com.heja.groupproject.model.Course;

public interface CourseRepository {
	
	void addCourse(Course course);
	
	void updateCourse(Course course);
	
	void deleteCourse(int id);
	
	Course getCourseById(int id);
	
	List<Course> allCourse();
}
