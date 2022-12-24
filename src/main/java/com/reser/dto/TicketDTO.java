package com.reser.dto;

import lombok.Data;

@Data
public class TicketDTO {
    private int ticketidSeq;
    private String name;
    private int price;
    private String buydate;
}
