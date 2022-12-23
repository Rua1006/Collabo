package com.reser.service;

import com.reser.dto.TicketDTO;

import java.util.List;

public interface TicketService {
    public List<TicketDTO> ticketList() throws Exception;
    public void ticketInset(TicketDTO dto) throws Exception;
}
