package com.take.portfolio.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.take.portfolio.dao.BoardDao;
 
@Repository("BoardMapper")
public interface BoardMapper {
    public boolean addBoard(BoardDao b);
    public List<BoardDao> getBoard();
    //public boolean addReply(Reply r);
    //public List<Reply> getReply(int boardIdx);
	
}