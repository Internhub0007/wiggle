package com.heja.groupproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.heja.groupproject.model.Course;
import com.heja.groupproject.repository.CourseRepository;

@Service
@Transactional
public class CourseServiceImpl implements CourseService {
	
	@Autowired
	private CourseRepository courseRepository;

	@Override
	public void addCourse(Course course) {
		courseRepository.addCourse(course);
	}

	@Override
	public void updateCourse(Course course) {
		courseRepository.updateCourse(course);
	}

	@Override
	public void deleteCourse(int id) {
		courseRepository.deleteCourse(id);
	}

	@Override
	public Course getCourseById(int id) {
		return courseRepository.getCourseById(id);
	}

	@Override
	public List<Course> allCourse() {
		return courseRepository.allCourse();
	}
}
