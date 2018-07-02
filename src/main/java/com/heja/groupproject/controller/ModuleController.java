package com.heja.groupproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.heja.groupproject.model.Course;
import com.heja.groupproject.model.Modules;
import com.heja.groupproject.model.Tutors;
import com.heja.groupproject.service.CourseService;
import com.heja.groupproject.service.ModulesService;

@Controller
public class ModuleController {
	
	@Autowired 
	private ModulesService modulesService;
//	@Autowired
//	private CourseService courseService;
	
	@RequestMapping(value = "/module_form")
	public String moduleForm(Model model) {
//		model.addAttribute("courses", courseService.allCourse());
		return"/Admin/addModule";
	}
	
	@RequestMapping(value = "/module_register" , method = RequestMethod.POST)
	public String registerModule(@ModelAttribute Modules modules) {
		modulesService.addModule(modules);
		return"redirect:/module_list";
	}
	
	@RequestMapping(value = "/module_delete", method = RequestMethod.GET)
	public String deleteModule(@RequestParam int id) {
		modulesService.deleteModule(id);
		return "redirect:/module_list";
	}
	
	@RequestMapping(value = "/module_list" ,method = RequestMethod.GET)
	public String moduleLists(Model model) {
		model.addAttribute("modules", modulesService.allmodules());
		return"/Admin/moduleList";
	}
	
	
	@RequestMapping(value = "/module_edit", method = RequestMethod.GET)
	public ModelAndView updateTutorForm(@RequestParam int id) {
		ModelAndView form = new ModelAndView("/Admin/updateModule");
		form.addObject("module", modulesService.getModuleById(id));
		return form;
	}
	
	@RequestMapping(value = "/module_update", method = RequestMethod.POST)
	public String updateTutor(@ModelAttribute Modules modules) {
		modulesService.getModuleById(modules.getId());
		modulesService.updateModule(modules);
		return "redirect:/module_list";
	}
	
}
