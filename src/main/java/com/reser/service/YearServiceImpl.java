package com.reser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reser.dao.YearDAO;
import com.reser.dto.YearDTO;

@Service
public class YearServiceImpl implements YearService {
	
	@Autowired
	private YearDAO yearDAO;

	@Override
	public List<YearDTO> yearList() throws Exception {
		return yearDAO.yearList();
	}

	@Override
	public YearDTO yearDetail(int no) throws Exception {
		return yearDAO.yearDetail(no);
	}

	@Override
	public void yearInsert(YearDTO dto) throws Exception {
		yearDAO.yearInsert(dto);
		
	}

	@Override
	public void yearDelete(int no) throws Exception {
		yearDAO.yearDelete(no);
		
	}

	@Override
	public void yearEdit(YearDTO dto) throws Exception {
		yearDAO.yearEdit(dto);
		
	}
	
	

}
