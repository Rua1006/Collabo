package com.reser.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.reser.dto.YearDTO;

@Repository
public class YearDAOImpl implements YearDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<YearDTO> yearList() throws Exception {
		return sqlSession.selectList("year.yearList");
	}

	@Override
	public YearDTO yearDetail(int no) throws Exception {
		return sqlSession.selectOne("year.yearDetail", no);
	}
	
	@Override
	public void yearInsert(YearDTO dto) throws Exception {
		sqlSession.insert("year.YearInsert", dto);
		
	}
	
	@Override
	public void yearDelete(int no) throws Exception {
		sqlSession.delete("year.yearDelete", no);
		
	}

	@Override
	public void yearEdit(YearDTO dto) throws Exception {
		sqlSession.update("year.yearEdit", dto);
		
	}
	
	

}
