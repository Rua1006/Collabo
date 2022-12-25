package com.reser.dao;

import java.util.List;

import com.reser.dto.BoardDTO;

public interface BoardDAO {
	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int bno) throws Exception;
	public void boardInsert(BoardDTO dto) throws Exception;
	public void boardDelete(int bno) throws Exception;
	public void boardEdit(BoardDTO dto) throws Exception;
}
