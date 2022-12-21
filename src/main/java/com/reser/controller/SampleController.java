package com.reser.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sample/*")
public class SampleController {

	@RequestMapping("main")
	public String sample(Locale locale, Model model) throws Exception {
		return "sample/main";
	}

}

