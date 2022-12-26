package com.reser.dao;

import java.util.List;

import com.reser.dto.YearDTO;

public interface YearDAO {
	public List<YearDTO> yearList() throws Exception;
	public YearDTO yearDetail(int no) throws Exception;
	public void yearInsert(YearDTO dto) throws Exception;
	public void yearDelete(int no) throws Exception;
	public void yearEdit(YearDTO dto) throws Exception;
}
