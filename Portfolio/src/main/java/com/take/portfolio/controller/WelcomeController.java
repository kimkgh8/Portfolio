package com.take.portfolio.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.take.portfolio.Method.Method;
import com.take.portfolio.dto.BoardDTO;
import com.take.portfolio.service.BoardService;


@Controller
public class WelcomeController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

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
	//@RequestMapping("/welcome/coment")
	//public String coment() {
	//	return "coment";
	//}
	
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
	
	@GetMapping(value = "/welcome/comment")
	public String openBoardWrite(@RequestParam(value = "idx", required = false) Long idx,@ModelAttribute("params") BoardDTO params, Model model) {
		if (idx == null) {
			logger.debug("TEST1.");
			model.addAttribute("comment", new BoardDTO());
			BoardDTO comment = boardService.getBoardDetail(idx);
			List<BoardDTO> boardList = boardService.getBoardList(params);
			model.addAttribute("boardList", boardList);
			//if (comment == null) {
			//	return "redirect:/comment/list.do";
			//}
			if (comment != null){
				model.addAttribute("comment", comment);
			}
			//logger.debug("idx is NULL");
		} else {
			logger.debug("TEST2.");
			BoardDTO comment = boardService.getBoardDetail(idx);
			List<BoardDTO> boardList = boardService.getBoardList(params);
			model.addAttribute("boardList", boardList);
			//if (comment == null) {
			//	return "redirect:/comment/list.do";
			//}
			if (comment != null){
				model.addAttribute("comment", comment);
			}
			//logger.debug("idx is NOT NULL");
		}

		return "thymeleaf/comment";
	}
	@PostMapping(value = "/welcome/comment/register.do")
	public String registerBoard(@RequestParam(value = "idx", required = false) Long idx,@ModelAttribute("params") BoardDTO params, Model model) {
		try {
			boolean isRegistered = boardService.registerBoard(params);
			model.addAttribute("comment", new BoardDTO());
			logger.debug("TEST.");
			BoardDTO comment = boardService.getBoardDetail(idx);
			List<BoardDTO> boardList = boardService.getBoardList(params);
			model.addAttribute("boardList", boardList);
			if (comment != null){
				model.addAttribute("comment", comment);
			}
			if (isRegistered == false) {
				logger.debug("????????? ????????? ?????????????????????.");
				//return showMessageWithRedirect("????????? ????????? ?????????????????????.", "/board/list.do", Method.GET, null, model);
			}
		} catch (DataAccessException e) {
			logger.debug("?????????????????? ?????? ????????? ????????? ?????????????????????.");
			//return showMessageWithRedirect("?????????????????? ?????? ????????? ????????? ?????????????????????.", "/board/list.do", Method.GET, null, model);

		} catch (Exception e) {
			logger.debug("???????????? ????????? ?????????????????????.");
			//return showMessageWithRedirect("???????????? ????????? ?????????????????????.", "/board/list.do", Method.GET, null, model);
		}

		//return showMessageWithRedirect("????????? ????????? ?????????????????????.", "thymeleaf/comment", Method.GET, null, model);
		//return "thymeleaf/comment";
		return "thymeleaf/comment";
	}
	/*
	@GetMapping(value = "/comment/list.do")
	public String openBoardList(Model model) {
		List<BoardDTO> boardList = boardService.getBoardList();
		model.addAttribute("boardList", boardList);

		return "thymeleaf/comment";
	}*/
}
