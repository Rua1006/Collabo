package com.reser.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.reser.dto.BoardDTO;
import com.reser.dto.YearDTO;
import com.reser.service.YearService;

@Controller
@RequestMapping("/year/*")
public class YearController {

	@Autowired
	private YearService yearService;
	
	// 목록
	@GetMapping("list.do")		
	public String getYearList(Model model) throws Exception {
		List<YearDTO> yearList = yearService.yearList(); 
		model.addAttribute("yearList", yearList);
		return "year/yearList";
	}
	
	//상세보기
	@GetMapping("detail.do")	
	public String getYearDetail(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		YearDTO dto = yearService.yearDetail(no);
		model.addAttribute("dto", dto);
		return "year/yearDetail";
	}
	
	//등록
	@GetMapping("insert.do")
	public String insertForm(HttpServletRequest request, Model model) throws Exception {
		return "year/yearInsert";
	}
	
	@PostMapping("insert.do")
	public String yearInsert(HttpServletRequest request, Model model) throws Exception {
		YearDTO dto = new YearDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setYdisA(request.getParameter("ydisA"));
		dto.setYdisB(request.getParameter("ydisB"));
		dto.setYdisC(request.getParameter("ydisC"));
		dto.setYdisD(request.getParameter("ydisD"));
		dto.setYdisE(request.getParameter("ydisE"));
		yearService.yearInsert(dto);
		
		return "redirect:list.do";
	}
	
	//공지사항 삭제
	@GetMapping("delete.do")
	public String yearDelete(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		yearService.yearDelete(no);
		
		return "redirect:list.do";
	}
	
	//공지사항 수정
	@GetMapping("edit.do")
	public String editForm(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		YearDTO dto = yearService.yearDetail(no);
		model.addAttribute("dto", dto);
		return "year/yearEdit";
	}
	
	@PostMapping("edit.do")
	public String yearEdit(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		
		YearDTO dto = new YearDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setYdisA(request.getParameter("ydisA"));
		dto.setYdisB(request.getParameter("ydisB"));
		dto.setYdisC(request.getParameter("ydisC"));
		dto.setYdisD(request.getParameter("ydisD"));
		dto.setYdisE(request.getParameter("ydisE"));
		yearService.yearEdit(dto);
		
		return "redirect:list.do";
	}
	
}
