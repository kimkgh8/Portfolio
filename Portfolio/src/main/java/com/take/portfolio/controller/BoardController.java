package com.take.portfolio.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.take.portfolio.dto.BoardDto;
import com.take.portfolio.service.BoardService;


@Controller
@RequestMapping("/welcome/board")
public class BoardController {
	@Autowired
	private BoardService boardService;

	@RequestMapping("list")
	public ModelAndView notice(HttpServletRequest request, BoardDto boardDto) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		// 목록 갯수
		int totalCnt = this.boardService.selectBoardListCnt(request, boardDto);
		
		// 목록
		List<BoardDto> list = null;
		if(totalCnt > 0){
			list = this.boardService.selectBoardList(request, boardDto);
		}
		
		mv.addObject("totalCnt", totalCnt);
		mv.addObject("list", list);
		mv.addObject("boardDto", boardDto);
		
		return mv;
	}
}
