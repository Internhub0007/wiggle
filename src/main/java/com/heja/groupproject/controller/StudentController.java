package com.heja.groupproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.heja.groupproject.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;

	@RequestMapping(value="/student_form" , method = RequestMethod.GET)	
	public String registerStudent() {
		return "/Admin/addStudents";
	}
	
	@RequestMapping(value ="/student_list", method = RequestMethod.GET)
	public String studentList(Model model) {
		model.addAttribute("students", studentService.allStudents());
		return "/Admin/studentList";
	}
}
