package com.take.portfolio;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.CollectionUtils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.take.portfolio.dto.BoardDTO;
import com.take.portfolio.mapper.BoardMapper;

@SpringBootTest
public class MapperTests {
	@Autowired
	private BoardMapper boardMapper;

	@Test
	public void testOfInsert() {
		BoardDTO params = new BoardDTO();
		params.setContent("1번 게시글 내용");
		params.setWriter("테스터");
		if (boardMapper == null) {
			System.out.println("Mapper IS NULL");
		}
		int result = boardMapper.insertBoard(params);
		System.out.println("결과는 " + result + "입니다.");
	}
	
	@Test
	public void testOfSelectDetail() {
		BoardDTO board = boardMapper.selectBoardDetail((long) 1);
		try {
			String boardJson = new ObjectMapper().writeValueAsString(board);

			System.out.println("=========================");
			System.out.println(boardJson);
			System.out.println("=========================");

		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
	}
	@Test
	public void testMultipleInsert() {
		for (int i = 2; i <= 50; i++) {
			BoardDTO params = new BoardDTO();
			params.setContent(i + "번 게시글 내용");
			params.setWriter(i + "번 게시글 작성자");
			boardMapper.insertBoard(params);
		}
	}
	
	@Test
	public void testSelectList() {
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setContent("1번 게시글 내용");
		boardDTO.setWriter("테스터");
		int boardTotalCount = boardMapper.selectBoardTotalCount(boardDTO);
		if (boardTotalCount > 0) {
			List<BoardDTO> boardList = boardMapper.selectBoardList(boardDTO);
			if (CollectionUtils.isEmpty(boardList) == false) {
				for (BoardDTO board : boardList) {
					System.out.println("=========================");
					System.out.println(board.getContent());
					System.out.println(board.getWriter());
					System.out.println("=========================");
				}
			}
		}
	}
}
