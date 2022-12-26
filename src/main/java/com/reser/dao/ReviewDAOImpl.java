package com.reser.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.reser.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ReviewDTO> reviewList() throws Exception {
		return sqlSession.selectList("review.reviewList");
	}

	@Transactional
	@Override
	public ReviewDTO reviewDetail(int rno) throws Exception {
		sqlSession.update("review.visitCount", rno);
		return sqlSession.selectOne("review.reviewDetail", rno);
	}

	@Override
	public void reviewInsert(ReviewDTO dto) throws Exception {
		sqlSession.insert("review.reviewInsert", dto);
		
	}

	@Override
	public void reviewDelete(int rno) throws Exception {
		sqlSession.delete("review.reviewDelete", rno);
		
	}

	@Override
	public void reviewEdit(ReviewDTO dto) throws Exception {
		sqlSession.update("review.reviewEdit", dto);
		
	}
	
	
	
}
