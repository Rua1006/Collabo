package com.reser.dao;

import com.reser.dto.TicketDTO;
import java.util.List;

public interface TicketDAO {
    public void ticketInsert(TicketDTO dto) throws Exception;
}
