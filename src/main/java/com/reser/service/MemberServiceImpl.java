package com.reser.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.reser.dao.MemberDAO;
import com.reser.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO memberDao; 
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO getMember(String id) throws Exception {
		return memberDao.getMember(id);
	}

	@Override
	public void memberInsert(MemberDTO dto) throws Exception {
		memberDao.memberInsert(dto);
	}
	
	//컨트롤러에서 로그인 처리
	@Override
	public MemberDTO signIn(MemberDTO mdto) throws Exception {
		return memberDao.signIn(mdto);
	}
	
	//서비스에서 로그인 처리
	@Override
	public boolean login(HttpServletRequest request) throws Exception {	
		HttpSession session = request.getSession();
		boolean loginSuccess = false;
		MemberDTO mdto = new MemberDTO();
		
		mdto.setUser_id(request.getParameter("user_id"));
		mdto.setUser_pw(request.getParameter("user_pw"));
		
		MemberDTO login = memberDao.login(mdto);
		
		loginSuccess =  pwdEncoder.matches(mdto.getUser_pw(), login.getUser_pw());
		if(login != null && loginSuccess==true) {
			session.setAttribute("member", login);
			session.setAttribute("sid", login.getUser_id());
			loginSuccess = true;
		}
		return loginSuccess;
	}
	
	@Override
	public MemberDTO loginCheck(MemberDTO mdto) throws Exception {
		return memberDao.loginCheck(mdto);
	}

	@Override
	public void memberUpdate(MemberDTO mdto) throws Exception {
		memberDao.memberUpdate(mdto);
	}

	@Override
	public void memberDelete(String id) throws Exception {
		memberDao.memberDelete(id);
	}


}
