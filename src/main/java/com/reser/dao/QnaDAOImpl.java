package com.reser.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.reser.dto.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return sqlSession.selectList("qna.qnaList");
	}

	@Override
	public QnaDTO getQna(int qno) throws Exception {
		return sqlSession.selectOne("qna.getQna", qno);
	}

	@Override
	public void addQna(QnaDTO qna) throws Exception {
		// TODO Auto-generated method stub
		
	}
	

}
