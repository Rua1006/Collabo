package com.reser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reser.dao.BoardDAO;
import com.reser.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return boardDAO.boardList();
	}

	@Override
	public BoardDTO boardDetail(int bno) throws Exception {
		return boardDAO.boardDetail(bno);
	}

	@Override
	public void boardInsert(BoardDTO dto) throws Exception {
		boardDAO.boardInsert(dto);
		
	}

	@Override
	public void boardDelete(int bno) throws Exception {
		boardDAO.boardDelete(bno);
		
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		boardDAO.boardEdit(dto);
		
	}
	
	

}
