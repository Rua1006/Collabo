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

	//�������� ���
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	//�������� �󼼺��� (+��ȸ�� ����)
	@Override
	public BoardDTO boardDetail(int bno) throws Exception {
		sqlSession.update("board.countUp", bno);
		return sqlSession.selectOne("board.boardDetail", bno);
	}
	
	//�������� ���
	@Override
	public void boardInsert(BoardDTO dto) throws Exception {
		sqlSession.insert("board.boardInsert", dto);
		
	}
	
	//�������� ����
	@Override
	public void boardDelete(int bno) throws Exception {
		sqlSession.delete("board.boardDelete", bno);
		
	}

	//�������� ����
	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		sqlSession.update("board.boardEdit", dto);
		
	}
	
	

}
