package com.reser.dto;

import lombok.Data;

@Data
public class BoardDTO{
    private int bno;			//����
    private String title;		//����
    private String content;		//����
    private String author;		//�ۼ���
    private String regdate;		//�ۼ���
    private int visited;		//��ȸ��

}
