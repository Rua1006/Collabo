package com.reser.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.reser.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	//공지사항 목록
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	//공지사항 상세보기 (+조회수 증가)
	@Override
	public BoardDTO boardDetail(int bno) throws Exception {
		sqlSession.update("board.countUp", bno);
		return sqlSession.selectOne("board.boardDetail", bno);
	}
	
	//공지사항 등록
	@Override
	public void boardInsert(BoardDTO dto) throws Exception {
		sqlSession.insert("board.boardInsert", dto);
		
	}
	
	//공지사항 삭제
	@Override
	public void boardDelete(int bno) throws Exception {
		sqlSession.delete("board.boardDelete", bno);
		
	}

	//공지사항 수정
	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		sqlSession.update("board.boardEdit", dto);
		
	}
	
	

}
