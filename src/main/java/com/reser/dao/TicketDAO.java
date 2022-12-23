package com.reser.dao;

import com.reser.dto.TicketDTO;

import java.rmi.server.ExportException;
import java.util.List;

public interface TicketDAO {
    public List<TicketDTO> ticketList() throws Exception;
    public void ticketInsert(TicketDTO dto) throws Exception;
}
