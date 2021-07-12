package com.take.portfolio.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.take.portfolio.dto.BoardDto;
import com.take.portfolio.mapper.BoardMapper;
 

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper boardMapper;
	
	public int selectBoardListCnt(HttpServletRequest request, BoardDto boardDto) throws Exception {
		return boardMapper.selectBoardListCnt();
	}

	public List<BoardDto> selectBoardList(HttpServletRequest request, BoardDto boardDto) throws Exception {
		return boardMapper.selectBoardList();
	}
}