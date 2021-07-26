package com.take.portfolio.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.take.portfolio.dto.BoardDTO;
import com.take.portfolio.service.BoardService;


@Controller
public class WelcomeController {
	
	@Autowired
	private BoardService boardService;
	
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
	
	@RequestMapping("/ex")
	public String ex() {
		return "ex";
	}
	@RequestMapping("/ex2")
	public String ex2() {
		return "ex2";
	}
	
	//@RequestMapping("/welcome/comment")
	//public String board() {
	//	return "comment";
	//}
	
	@RequestMapping("/welcome-thymeleaf.do")
	public String openBoardWrite(@RequestParam(value = "idx", required = false) Long idx, Model model) {
		if (idx == null) {
			model.addAttribute("comment", new BoardDTO());
		} else {
			BoardDTO comment = boardService.getBoardDetail(idx);
			if (board == null) {
				return "redirect:/comment/list.do";
			}
			model.addAttribute("comment", comment);
		}

		return "thymeleaf/comment";
	}
}
