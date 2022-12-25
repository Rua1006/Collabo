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
import com.reser.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	//공지사항 목록
	@GetMapping("list.do")		
	public String getBoardList(Model model) throws Exception {
		List<BoardDTO> boardList = boardService.boardList(); 
		model.addAttribute("boardList", boardList);
		return "board/boardList";
	}
	
	//공지사항 상세보기
	@GetMapping("detail.do")	
	public String getBoardDetail(HttpServletRequest request, Model model) throws Exception {
		int bno = Integer.parseInt(request.getParameter("bno"));
		BoardDTO dto = boardService.boardDetail(bno);
		model.addAttribute("dto", dto);
		return "board/boardDetail";
	}
	
	//공지사항 등록
	@GetMapping("insert.do")
	public String insertForm(HttpServletRequest request, Model model) throws Exception {
		return "board/boardInsert";
	}
	
	@PostMapping("insert.do")
	public String boardInsert(HttpServletRequest request, Model model) throws Exception {
		BoardDTO dto = new BoardDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		boardService.boardInsert(dto);
		
		return "redirect:list.do";
	}
	
	//공지사항 삭제
	@GetMapping("delete.do")
	public String boardDelete(HttpServletRequest request, Model model) throws Exception {
		int bno = Integer.parseInt(request.getParameter("bno"));
		boardService.boardDelete(bno);
		
		return "redirect:list.do";
	}
	
	//공지사항 수정
	@GetMapping("edit.do")
	public String editForm(HttpServletRequest request, Model model) throws Exception {
		int bno = Integer.parseInt(request.getParameter("bno"));
		BoardDTO dto = boardService.boardDetail(bno);
		model.addAttribute("dto", dto);
		return "board/boardEdit";
	}
	
	@PostMapping("edit.do")
	public String boardEdit(HttpServletRequest request, Model model) throws Exception {
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardDTO dto = new BoardDTO();
		dto.setBno(bno);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		boardService.boardEdit(dto);
		
		return "redirect:list.do";
	}
	
}
