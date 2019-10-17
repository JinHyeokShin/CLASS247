package com.ourcompany.class247.love.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ourcompany.class247.love.model.service.LoveService;
import com.ourcompany.class247.member.model.service.MemberService;

public class LoveController {
	@Autowired
	private LoveService lService;
	
	/**
	 * 1. 찜하기폼으로 이동.
	 * @return
	 */
	@RequestMapping("memZzim.do")
	public String memZzim() {
		return "user/member/memZzim";
	}
	
}
