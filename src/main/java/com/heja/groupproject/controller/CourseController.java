package com.heja.groupproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.heja.groupproject.service.CourseService;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value = "/course_form" , method = RequestMethod.GET)
	public String addCourse() {
		return"/Admin/addCourse";
	}
	
	@RequestMapping(value = "/course_list" , method = RequestMethod.GET)
	public String courseList(Model model) {
		model.addAttribute("courses",courseService.allCourse());
		return"/Admin/courseList";
	}
}
