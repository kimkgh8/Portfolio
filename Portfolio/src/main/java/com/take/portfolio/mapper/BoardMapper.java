package com.take.portfolio.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.take.portfolio.dto.BoardDto;
 
@Mapper
public interface BoardMapper {
	
	int selectBoardListCnt() throws Exception;
	
	List<BoardDto> selectBoardList() throws Exception;
	
}
