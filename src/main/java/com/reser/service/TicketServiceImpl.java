package com.reser.service;

import com.reser.dao.TicketDAO;
import com.reser.dto.TicketDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TicketServiceImpl implements TicketService{

    @Autowired
    TicketDAO ticketDao;

    @Override
    public void ticketInsert(TicketDTO dto) throws Exception {
        ticketDao.ticketInsert(dto);
    }
}
