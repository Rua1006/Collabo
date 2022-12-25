package com.reser.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

@Controller
@RequestMapping("/reservation/*")
public class ReservationController {

    @RequestMapping("reservation.do")
    public String sample(Locale locale, Model model) throws Exception {
        return "reservation/reservation";
    }

}
