package com.reser.dao;

import com.reser.dto.TicketDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TicketDAOImpl implements TicketDAO{

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<TicketDTO> ticketList() throws Exception {
        return sqlSession.selectList("ticket.ticketList");
    }

    @Override
    public void ticketInsert(TicketDTO dto) throws Exception {
        sqlSession.insert("ticket.ticketInsert");
    }
}
