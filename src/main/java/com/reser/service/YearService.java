package com.reser.service;

import java.util.List;

import com.reser.dto.YearDTO;

public interface YearService {
	public List<YearDTO> yearList() throws Exception;
	public YearDTO yearDetail(int no) throws Exception;
	public void yearInsert(YearDTO dto) throws Exception;
	public void yearDelete(int no) throws Exception;
	public void yearEdit(YearDTO dto) throws Exception;
}
