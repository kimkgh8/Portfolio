package com.take.portfolio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.take.portfolio.dao.BoardDao;
import com.take.portfolio.mapper.BoardMapper;
 

// 서비스 역할
// Controller에 의해 호출되어 실제 비즈니스 로직과 트랜잭션을 처리하고, DB CRUD(Persistence)를 담당하는 DAO 객체를 Spring 으로부터 주입 받아서, DAO에 DB CRUD 처리를 위임하고, 처리 결과를 Controller에게 반환합니다.
// Service @Service, @Transactional, @Autowired 비즈니스 로직과 트랜잭션 처리합니다.

@Service
public class BoardService {
    @Autowired private BoardMapper m;
	
    public List<BoardDao> getBoard(){
        return m.getBoard();
    }
}