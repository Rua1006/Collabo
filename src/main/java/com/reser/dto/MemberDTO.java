package com.reser.dto;

import lombok.Data;

@Data
public class MemberDTO {
	private int useridSeq;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String email;
	private String tel; 
	private String addr1;
	private String addr2;
	private String postcode;
	private String regdate;
	private int pt;
	private int visited;

}