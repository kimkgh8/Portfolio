package com.take.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	@RequestMapping("/welcome")
	public String welcome() {
		return "welcome";
	}
	
	@RequestMapping("/welcome/index")
	public String index() {
		return "index";
	}
	
	//@RequestMapping("/welcome/index/project")
	@RequestMapping("/welcome/project")
	public String project() {
		return "project";
	}
	
	//@RequestMapping("/welcome/index/project/projectName")
	@RequestMapping("/welcome/projectName")
	public String projectName() {
		return "projectName";
	}
	
	//@RequestMapping("/welcome/index/project/projectName/coment")
	@RequestMapping("/welcome/coment")
	public String coment() {
		return "coment";
	}
}
