package com.reser.dto;

import lombok.Data;

@Data
public class UserTicketDTO {
    private int userticketidSeq;
    private int ticketid;
    private int userid;
    private String buydate;

}
