package com.heja.groupproject.controller;

import java.math.BigInteger;
import java.security.SecureRandom;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.heja.groupproject.model.Class;
import com.heja.groupproject.model.Modules;
import com.heja.groupproject.model.Tutors;
import com.heja.groupproject.service.ClassService;
import com.heja.groupproject.service.ModulesService;
import com.heja.groupproject.service.TutorsService;
import com.heja.groupproject.util.EmailUtil;

@Controller
public class TutorsController {

	@Autowired
	private TutorsService tutorsService;

	@Autowired
	private ModulesService modulesService;
	
	@Autowired
	private ClassService classService;

	@Autowired
	private MailSender mailSender;

	@RequestMapping(value = "/tutors_form", method = RequestMethod.GET)
	public String addTutors(Model model) {
		model.addAttribute("modules", modulesService.allmodules());
		model.addAttribute("classes", classService.allClasses());
		return "/Admin/addTutors";
	}

	@RequestMapping(value = "tutors_register", method = RequestMethod.POST)
	public String registerTutors(@ModelAttribute Tutors tutors, @RequestParam int moduleId, @RequestParam int classId) {
		tutors.getEmail();
		String randomPass = new BigInteger(20, new SecureRandom()).toString(32);
		String msg = "Your password is: " + randomPass + System.lineSeparator()
				+ " please use this password to login to the university portal, Thank you";
		EmailUtil.sendPassword(mailSender, tutors.getEmail(), "your password is: ", msg);
		tutors.setPassword(randomPass);
		Class classes = classService.getClassById(classId);
		Modules modules = modulesService.getModuleById(moduleId);
		if (modules != null) {
			tutors.setModule(modules);
			tutors.setClasses(classes);
		}
		tutorsService.addTutor(tutors);
		return "redirect:/tutors_list";

	}

	@RequestMapping(value = "/tutor_delete", method = RequestMethod.GET)
	public String deleteTutor(@RequestParam int id) {
		tutorsService.deleteTutor(id);
		return "redirect:/tutors_list";
	}

	@RequestMapping(value = "/tutor_edit", method = RequestMethod.GET)
	public ModelAndView updateTutorForm(@RequestParam int id) {
		ModelAndView form = new ModelAndView("/Admin/updateTutor");
		form.addObject("tutor", tutorsService.getTutorById(id));
		return form;
	}

	@RequestMapping(value = "/tutor_update", method = RequestMethod.POST)
	public String updateTutor(@ModelAttribute Tutors tutors) {
		tutorsService.getTutorById(tutors.getId());
		tutorsService.updateTutor(tutors);
		return "redirect:/tutors_list";
	}

	@RequestMapping(value = "/tutors_list", method = RequestMethod.GET)
	public String Tutors(Model model) {
		model.addAttribute("tutors", tutorsService.allTutors());
		return "/Admin/tutorsList";
	}

	@RequestMapping(value = "/tutor_loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "/tutorLogin";
	}

	@RequestMapping(value = "/tutor")
	public String tutorPage() {

		return "/Tutor/tutorIndex";
	}

	@RequestMapping(value = "tlogin", method = RequestMethod.POST)
	public String tlogin(@RequestParam String email, @RequestParam String pass, HttpSession session) {
		boolean isLogin = tutorsService.checkLogin(email, pass);

		if (isLogin) {
			// tutorsService.getTutorByEmail(email);
			session.setAttribute("email", email);
			return "redirect:/tutor";
		}
		return "/tutor_loginForm";
	}

	@RequestMapping(value = "/tutor_detail", method = RequestMethod.GET)
	public ModelAndView details(HttpSession session) {
		String email = (String) session.getAttribute("email");
		Tutors tutors = tutorsService.getTutorByEmail(email);
		ModelAndView form = new ModelAndView("/Tutor/tutorDetail");
		form.addObject("tutor", tutors);
		return form;
	}

	@RequestMapping(value = "/tlogout")
	public String tlogout(HttpSession session) {
		session.invalidate();
		return "redirect:/tutor_loginForm";
	}

	@RequestMapping(value = "/tforgot_password", method = RequestMethod.POST)
	public String forgotPassword(@RequestParam String email) {
		Tutors tutors = tutorsService.checkEmail(email);
		String randomPass = new BigInteger(30, new SecureRandom()).toString(32);
		String msg = "Your new Password is: " + randomPass;
		EmailUtil.sendPassword(mailSender, tutors.getEmail(), "Your new password", msg);
		tutors.setPassword(randomPass);
		tutorsService.updateTutor(tutors);

		return "redirect:/";
	}

}
