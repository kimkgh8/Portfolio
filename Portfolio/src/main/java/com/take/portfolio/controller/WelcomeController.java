package com.take.portfolio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.take.portfolio.dao.BoardDao;
import com.take.portfolio.service.BoardService;

@Controller
public class WelcomeController {
	
	@Autowired
    private BoardService s;
	
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
	@RequestMapping("/welcome/board")
	public String board() {
		return "board";
	}
	
	@RequestMapping(value="/boardList", method=RequestMethod.GET)
    @ResponseBody
    public List<BoardDao> boardList(){
        return s.getBoard();
    }
}
