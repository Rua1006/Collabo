package com.reser.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.reser.dto.QnaDTO;
import com.reser.service.QnaService;

@Controller
@RequestMapping("/qna/")
public class QnaController {
	
	@Autowired
	QnaService qnaService;
	
	//목록보기
	@GetMapping("list.do")
	public String qnaList(Model model) throws Exception{
		List<QnaDTO> qnaList = qnaService.qnaList();
		model.addAttribute("qnaList", qnaList);
		return "qna/qnaList";
	}
	
	//상세보기
	@GetMapping("detail.do")
	public String getQna(HttpServletRequest request, Model model) throws Exception{
		int qno = Integer.parseInt(request.getParameter("qno"));
		QnaDTO dto = qnaService.getQna(qno);
		model.addAttribute("dto",dto);
		return "qna/qnaDetail";
	}

	//질문 작성폼
		@GetMapping("insert")
		public String insertQna(HttpServletRequest request, Model model) throws Exception{
			return "qna/qnaInsert";
		}
		
		//질문하기
		@PostMapping("insert.do")
		public String QnaInsert(HttpServletRequest request, Model model) throws Exception {
			QnaDTO dto = new QnaDTO();
			dto.setTitle(request.getParameter("title"));
			dto.setContent(request.getParameter("content"));
			dto.setAuthor(request.getParameter("author"));
			dto.setLev(Integer.parseInt(request.getParameter("lev")));
			dto.setSec(request.getParameter("sec"));
			qnaService.addQna(dto);
			
			return "redirect:list";
		}
		
		//답변 작성폼
		@GetMapping("reInsert")
		public String insertReply(HttpServletRequest request, Model model) throws Exception{
			int qno = Integer.parseInt(request.getParameter("qno"));
			QnaDTO dto = qnaService.getQna(qno);
			model.addAttribute("dto",dto);
			return "qna/replyInsert";
		}
		
		@PostMapping("reInsert.do")
		public String ReplyInsert(HttpServletRequest request, Model model) throws Exception {
			QnaDTO dto = new QnaDTO();
			dto.setTitle(request.getParameter("title"));
			dto.setContent(request.getParameter("content"));
			dto.setAuthor(request.getParameter("author"));
			dto.setLev(Integer.parseInt(request.getParameter("lev")));
			dto.setSec(request.getParameter("sec"));
			qnaService.addQna(dto);
			
			return "redirect:list";
		}
}
