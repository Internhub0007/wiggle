package com.heja.groupproject.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.heja.groupproject.model.Course;
import com.heja.groupproject.model.Modules;
import com.heja.groupproject.service.CourseService;
import com.heja.groupproject.service.ModulesService;

@Controller
public class CourseController {

	@Autowired
	private CourseService courseService;

	@Autowired
	private ModulesService modulesService;

	@RequestMapping(value = "/course_form", method = RequestMethod.GET)
	public String addCourse(Model model) {
		model.addAttribute("module", modulesService.allmodules());
		return "/Admin/addCourse";
	}

	@RequestMapping(value = "/course_register", method = RequestMethod.POST)
	public String registerCourse(@ModelAttribute Course course, @RequestParam List<String> moduleIds) {
		List<Modules> module = new ArrayList<>();
		if (moduleIds != null) {
			for (String moduleId : moduleIds) {
				module.add(modulesService.getModuleById(Integer.parseInt(moduleId)));
			}
		}

		if (course != null) {
			course.setModules(module);
		}

		courseService.addCourse(course);
		return "redirect:/course_list";
	}

	@RequestMapping(value = "/course_list", method = RequestMethod.GET)
	public String courseList(Model model) {
		
		model.addAttribute("courses", courseService.allCourse());
		return "/Admin/courseList";
	}

	@RequestMapping(value = "/course_delete", method = RequestMethod.GET)
	public String deleteCourse(@RequestParam int id) {
		courseService.deleteCourse(id);
		return "redirect:/course_list";
	}

	@RequestMapping(value = "/course_edit", method = RequestMethod.GET)
	public ModelAndView updateCourseForm(Model model, @RequestParam int id ,@RequestParam(value = "moduleIds", required = false) long[] moduleIds) {
		ModelAndView form = new ModelAndView("/Admin/updateCourse");
		model.addAttribute("module", modulesService.allmodules());
		form.addObject("course", courseService.getCourseById(id));
		return form;
	}

	@RequestMapping(value = "/course_update", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute Course course) {
		courseService.getCourseById(course.getId());
		courseService.updateCourse(course);
		return "redirect:/course_list";
	}
}
