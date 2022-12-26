package com.reser.service;

import java.util.List;

import com.reser.dto.ReviewDTO;

public interface ReviewService {
	public List<ReviewDTO> reviewList() throws Exception;
	public ReviewDTO reviewDetail(int rno) throws Exception;
	public void reviewInsert(ReviewDTO dto) throws Exception;
	public void reviewDelete(int rno) throws Exception;
	public void reviewEdit(ReviewDTO dto) throws Exception;

}
