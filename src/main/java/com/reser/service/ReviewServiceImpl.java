package com.reser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reser.dao.ReviewDAO;
import com.reser.dto.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public List<ReviewDTO> reviewList() throws Exception {
		return reviewDAO.reviewList();
	}

	@Override
	public ReviewDTO reviewDetail(int rno) throws Exception {
		return reviewDAO.reviewDetail(rno);
	}

	@Override
	public void reviewInsert(ReviewDTO dto) throws Exception {
		reviewDAO.reviewInsert(dto);
		
	}

	@Override
	public void reviewDelete(int rno) throws Exception {
		reviewDAO.reviewDelete(rno);
		
	}

	@Override
	public void reviewEdit(ReviewDTO dto) throws Exception {
		reviewDAO.reviewEdit(dto);
		
	}
	
	
	

}
