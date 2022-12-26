package com.reser.dao;

import java.util.List;

import com.reser.dto.ReviewDTO;

public interface ReviewDAO {
	public List<ReviewDTO> reviewList() throws Exception;
	public ReviewDTO reviewDetail(int rno) throws Exception;
	public void reviewInsert(ReviewDTO dto) throws Exception;
	public void reviewDelete(int rno) throws Exception;
	public void reviewEdit(ReviewDTO dto) throws Exception;
}
