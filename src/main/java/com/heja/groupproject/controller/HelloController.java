package com.heja.groupproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
	
	@RequestMapping(value="/hell", method = RequestMethod.GET)
	public String sayhello() {
		return "hello";
	}
}
