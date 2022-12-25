package com.reser.dto;

import lombok.Data;

@Data
public class BoardDTO{
    private int bno;			//연번
    private String title;		//제목
    private String content;		//내용
    private String author;		//작성자
    private String regdate;		//작성일
    private int visited;		//조회수

}
