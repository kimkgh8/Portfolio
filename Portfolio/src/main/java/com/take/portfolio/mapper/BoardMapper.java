package com.take.portfolio.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.take.portfolio.dto.BoardDTO;
import com.take.portfolio.paging.Criteria;

@Mapper
public interface BoardMapper {
	public int insertBoard(BoardDTO params);

	public BoardDTO selectBoardDetail(Long idx);

	public int updateBoard(BoardDTO params);

	public int deleteBoard(Long idx);

	public List<BoardDTO> selectBoardList();

	public int selectBoardTotalCount();
	
	public List<BoardDTO> selectBoardList(Criteria criteria);

	public int selectBoardTotalCount(Criteria criteria);
}
