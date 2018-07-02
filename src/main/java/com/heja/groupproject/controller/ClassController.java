package com.heja.groupproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.heja.groupproject.service.ClassService;
import com.heja.groupproject.model.Class;
import com.heja.groupproject.model.Course;

@Controller
public class ClassController {

	@Autowired
	private ClassService classService;

	@RequestMapping(value = "/class_form", method = RequestMethod.GET)
	public String addClassForm() {
		return "/Admin/addClass";
	}

	@RequestMapping(value = "/class_register", method = RequestMethod.POST)
	public String registerClass(@ModelAttribute Class class1) {
		classService.addClass(class1);
		return "redirect:/class_list";
	}

	@RequestMapping(value = "/class_list", method = RequestMethod.GET)
	public String classList(Model model) {
		model.addAttribute("classes", classService.allClasses());
		return "/Admin/classList";
	}

	@RequestMapping(value = "/class_delete", method = RequestMethod.GET)
	public String deleteCourse(@RequestParam int id) {
		classService.deleteClass(id);
		return "redirect:/class_list";
	}

	@RequestMapping(value = "/class_edit", method = RequestMethod.GET)
	public ModelAndView updateCourseForm(Model model, @RequestParam int id) {
		ModelAndView form = new ModelAndView("/Admin/updateClass");
		form.addObject("classes", classService.getClassById(id));
		return form;
	}
	@RequestMapping(value = "/class_update", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute Class class1) {
		classService.getClassById(class1.getId());
		classService.updateClass(class1);
		return "redirect:/class_list";
	}

}
