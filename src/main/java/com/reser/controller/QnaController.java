package com.reser.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.reser.dto.QnaDTO;
import com.reser.service.QnaService;

@Controller
@RequestMapping("/qna/")
public class QnaController {
	
	@Autowired
	QnaService qnaService;
	
	@GetMapping("list.do")
	public String qnaList(Model model) throws Exception{
		List<QnaDTO> qnaList = qnaService.qnaList();
		model.addAttribute("qnaList", qnaList);
		return "qna/qnaList";
	}
	
	@GetMapping("detail.do")
	public String getQna(HttpServletRequest request, Model model) throws Exception{
		int qno = Integer.parseInt(request.getParameter("qno"));
		QnaDTO dto = qnaService.getQna(qno);
		model.addAttribute("dto",dto);
		return "qna/qnaDetail";
	}

}
