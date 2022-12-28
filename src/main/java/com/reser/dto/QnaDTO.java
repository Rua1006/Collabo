package com.reser.dto;

import lombok.Data;

@Data
public class QnaDTO {
	
	private int qno;	//글번호
	private String author;	//작성자
    private String title;	//제목
    private String content;	//내용
    private String regdate;	//작성일
    private int hit;	//조회수
    private int lev;	//깊이
    private int parno;	//부모글 번호
    private String sec;	//비밀글

}