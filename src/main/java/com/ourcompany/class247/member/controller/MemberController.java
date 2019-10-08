package com.ourcompany.class247.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.ourcompany.class247.member.model.service.MemberService;
import com.ourcompany.class247.member.model.vo.Member;


@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	/**
	 * 1. 로그인폼으로 이동.
	 * @return
	 */
	@RequestMapping("loginForm.do")
	public String loginForm() {
		return "user/member/loginForm";
	}
	
	/** 2. 회원가입폼으로 이동.
	 * @return
	 */
	@RequestMapping("joinForm.do")
	public String joinForm() {
		return "user/member/memberJoinForm";
	}
	
	/** 3. 회원가입
	 * @param m
	 * @param model
	 * @param post
	 * @param address1
	 * @param address2
	 * @return
	 */
	@RequestMapping("minsert.do")
	public String insertMember(Member m, Model model,
								@RequestParam("post") String post,
								@RequestParam("address1") String address1,
								@RequestParam("address2") String address2) {
		
		
		String encPwd= bcryptPasswordEncoder.encode(m.getMemPwd());
		m.setMemPwd(encPwd);
		
		if(!post.equals("")) {
		m.setMemAddress(post+","+address1+","+address2);
		}
		
		int result=mService.insertMember(m);
		if(result>0) {
			return "redirect:home.do";
		}else {
			
			model.addAttribute("msg","회원가입 실패!!");
			return "common/errorPage";
		}

	}
	
	
	/** 4. 로그인
	 * @param m
	 * @param model
	 * @return
	 */
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginMember(Member m, Model model) {
		
		Member loginUser = mService.loginMember(m);
		
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemPwd(), loginUser.getMemPwd())) { // 로그인에 성공했을 경우
			model.addAttribute("loginUser",loginUser);
			return "redirect:home.do";
		}else {
			model.addAttribute("msg","로그인 실패 !!");
			
			return "common/errorPage";
		}
	}
	
	
	/** 5. 로그아웃
	 * @param status
	 * @return
	 */
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:home.do";
	}
}
