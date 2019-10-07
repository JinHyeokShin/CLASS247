package com.ourcompany.class247.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ourcompany.class247.member.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	
	
	/**
	 * 1. 로그인폼으로 이동.
	 * @return
	 */
	@RequestMapping("loginForm.do")
	public String loginForm() {
		return "user/member/loginForm";
	}
	
	@RequestMapping("joinForm.do")
	public String joinForm() {
		return "user/member/memberJoinForm";
	}
}
