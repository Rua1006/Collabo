package com.reser.dao;

import java.util.List;

import com.reser.dto.QnaDTO;

public interface QnaDAO {
	
	public List<QnaDTO> qnaList() throws Exception;
	public QnaDTO getQna(int qno) throws Exception;
	public void addQna(QnaDTO qna) throws Exception;
	public void addReply(QnaDTO qna) throws Exception;

}
