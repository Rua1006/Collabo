package com.reser.dao;

import com.reser.dto.TicketDTO;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@Repository
public class TicketDAOImpl implements TicketDAO{

    @Autowired
    SqlSession sqlSession;

    @Override
    public void ticketInsert(TicketDTO dto) throws Exception {
        System.out.println("####4###0");
        sqlSession.insert("ticket.ticketInsert", dto);
    }
}
