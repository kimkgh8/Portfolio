package com.take.portfolio.service;

import java.util.List;

import com.take.portfolio.dto.BoardDTO;
import com.take.portfolio.paging.Criteria;

public interface BoardService {

	public boolean registerBoard(BoardDTO params);

	public BoardDTO getBoardDetail(Long idx);

	public boolean deleteBoard(Long idx);

	public List<BoardDTO> getBoardList(Criteria criteria);

}