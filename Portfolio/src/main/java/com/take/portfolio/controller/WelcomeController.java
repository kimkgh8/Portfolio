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
	
	@RequestMapping("/welcome/index/project")
	public String project() {
		return "project";
	}
	
	@RequestMapping("/welcome/index/project/project2")
	public String project2() {
		return "project2";
	}
	
	@RequestMapping("/welcome/index/project/project2/coment")
	public String coment() {
		return "coment";
	}
}
