package com.heja.groupproject.controller;

import java.math.BigInteger;
import java.security.SecureRandom;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.heja.groupproject.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MailSender mailSender;
	
	@RequestMapping(value = "/admin")
	public String adminPage() {
		return "/Admin/adminIndex";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String uname, @RequestParam String pass, HttpSession session) {
		boolean isLogin = adminService.checkLogin(uname, pass);
		if(isLogin) {
			session.setAttribute("username", uname);
			return"redirect:/admin";
		}
	return"redirect:/admin_login";
	}
	
	@RequestMapping(value = "admin_login")
	public String loginForm() {
		return "/adminLogin";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return"redirect:/admin_login";
	}
	
	
}
