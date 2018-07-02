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
import com.heja.groupproject.model.Course;
import com.heja.groupproject.model.Students;
import com.heja.groupproject.service.ClassService;
import com.heja.groupproject.service.CourseService;
import com.heja.groupproject.service.StudentService;
import com.heja.groupproject.util.EmailUtil;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private ClassService classService;
	@Autowired
	private MailSender mailSender;

	@RequestMapping(value = "/student_form", method = RequestMethod.GET)
	public String registerStudent(Model model) {
		model.addAttribute("courses", courseService.allCourse());
		model.addAttribute("classes", classService.allClasses());
		return "/Admin/addStudents";
	}

	@RequestMapping(value = "/student_register", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute Students students, @RequestParam int courseId, @RequestParam int classId) {
		students.getEmail();
		String randomPass = new BigInteger(20, new SecureRandom()).toString(32);
		String msg = "Your password is: " + randomPass + System.lineSeparator()
				+ " please use this password to login to the university portal, Thank you";
		EmailUtil.sendPassword(mailSender, students.getEmail(), "your password is: ", msg);
		students.setPassword(randomPass);
		Class classes = classService.getClassById(classId);
		Course course = courseService.getCourseById(courseId);
		if (course != null) {
			students.setClasses(classes);
			students.setCourse(course);
		}
		studentService.addStudent(students);
		return "redirect:/student_list";
	}

	@RequestMapping(value = "/student_delete", method = RequestMethod.GET)
	public String deleteTutor(@RequestParam int id) {
		studentService.deleteStudent(id);
		return "redirect:/student_list";
	}

	@RequestMapping(value = "/student_edit", method = RequestMethod.GET)
	public ModelAndView updateTutorForm(@RequestParam int id) {
		ModelAndView form = new ModelAndView("/Admin/updateStudent");
		form.addObject("students", studentService.getStudentById(id));
		return form;
	}

	@RequestMapping(value = "/student_update", method = RequestMethod.POST)
	public String updateTutor(@ModelAttribute Students students) {
		studentService.getStudentById(students.getId());
		studentService.updateStudent(students);
		return "redirect:/student_list";
	}

	@RequestMapping(value = "/student_list", method = RequestMethod.GET)
	public String studentList(Model model) {
		model.addAttribute("students", studentService.allStudents());
		return "/Admin/studentList";
	}

	@RequestMapping(value = "/student_loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "/studentLogin";
	}

	@RequestMapping(value = "slogin", method = RequestMethod.POST)
	public String slogin(@RequestParam String email, @RequestParam String pass, HttpSession session) {
		boolean isLogin = studentService.checkLogin(email, pass);
		if (isLogin) {
			session.setAttribute("email", email);
			return "redirect:/student";
		}

		return "/student_loginForm";
	}

	@RequestMapping(value = "/slogout")
	public String slogout(HttpSession session) {
		session.invalidate();
		return "redirect:/student_loginForm";
	}

	@RequestMapping(value = "/forgot_password", method = RequestMethod.POST)
	public String forgotPassword(@RequestParam String email) {
		Students student = studentService.checkEmail(email);
		if (student.getEmail() != null) {
			String randomPass = new BigInteger(30, new SecureRandom()).toString(32);
			String msg = "Your new Password is: " + randomPass;
			EmailUtil.sendPassword(mailSender, student.getEmail(), "Your new password", msg);
			student.setPassword(randomPass);
			studentService.updateStudent(student);
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/student", method = RequestMethod.GET)
	public ModelAndView details(HttpSession session) {
		String email = (String) session.getAttribute("email");
		Students students = studentService.getStudentByEmail(email);
		ModelAndView form = new ModelAndView("/Student/studentIndex");
		form.addObject("student", students);
		return form;
	}
}
