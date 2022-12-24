package com.reser.controller;

import com.reser.dto.TicketDTO;
import com.reser.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/ticket/*")
public class TicketController {

    @Autowired
    private TicketService ticketService;

    //티켓 구매 선택페이지
    @GetMapping("ticketInfo.do")
    public String getTicket(Model model) throws Exception {
        return "ticket/ticketInfo";
    }


    //티켓 구매 옵션 (일반) 선택페이지
    @GetMapping("ticketOptionNomal.do")
    public String getOptionNomal(Model model) throws Exception {
        return "ticket/ticketOptionNomal";
    }

    //티켓 구매 옵션 (패스) 선택페이지
    @GetMapping("ticketOptionPass.do")
    public String getOptionPass(Model model) throws Exception {
        return "ticket/ticketOptionPass";
    }


    @PostMapping("insertTicket.do")
    public String insertTicket(HttpServletRequest request, Model model) throws Exception {
        TicketDTO dto = new TicketDTO();
        dto.setTicketidSeq(Integer.parseInt(request.getParameter("ticketidseq")));
        dto.setBuydate("");
        return "redirect:/";
    }
}
