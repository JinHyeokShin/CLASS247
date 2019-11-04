package com.ourcompany.class247.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.creator.model.service.CreatorService;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.member.model.service.MemberService;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.payment.model.service.PaymentService;
import com.ourcompany.class247.payment.model.vo.Payment;
import com.ourcompany.class247.review.model.vo.Review;

@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private CreatorService creService;
	
	@Autowired
	private CourseService coService;
	
	@Autowired
	private PaymentService pService;
	
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
	 * @throws IOException 
	 */
	@RequestMapping("login.do")
	public ModelAndView loginMember(Member m, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		
		Member loginUser = mService.loginMember(m);
		
		ModelAndView mv = new ModelAndView();
		
		
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemPwd(), loginUser.getMemPwd())) { // 로그인에 성공했을 경우
			
			session.setAttribute("loginUser", loginUser);
			
			
			
			if(loginUser.getMemType().equals("A") ) {
				
				mv.setViewName("redirect:adminMain.do");
				
			}else if(session.getAttribute("coNumNext") != null){
				mv.setViewName("redirect:codetail.do?courseNum=" + session.getAttribute("coNumNext"));
				session.removeAttribute("coNumNext");
			}
			else{	
				mv.setViewName("redirect:home.do");
				
			}
			
		}else {
			session.setAttribute("msg", "로그인에 실패하였습니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	/** 5. 로그아웃
	 * @param status
	 * @return
	 */
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpServletRequest request ) {
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		
		session.invalidate();
		
		mv.setViewName("redirect:home.do");
		return mv;
	}
	
	/**
	 * 6. 마이페이지폼으로 이동.
	 * @return
	 */
	@RequestMapping("myPage.do")
	public String myPage() {
		return "user/member/myPage";
	}
	
	/**
	 * 7. 회원정보수정페이지폼으로 이동.
	 * @return
	 */
	@RequestMapping("memUpdate.do")
	public String memUpdate() {
		return "user/member/memUpdate";
	}
	
	@RequestMapping("introduce.do")
	public String intoduce() {
		return "user/introduce/introduce";
	}
	

	
	/**
	 * 8. 회원정보수정페이지폼으로 이동.
	 * @return
	 */
	@RequestMapping("mUpdate.do")
	public String mUpdate(Member m, Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam("post") String post, 
			@RequestParam("address1") String address1, @RequestParam("address2") String address2,
			@RequestParam("gender") String gender) {
		
		HttpSession session = request.getSession();
		
		if(!post.equals("")) { //주소 작성해서 값이 넘어왔을 경우
			m.setMemAddress(post+","+address1+","+address2);	
		}
		
		if(!gender.equals("")) { //성별 작성해서 값이 넘어왔을 경우
			m.setMemGender(gender);	
		}
		

		String encPwd= bcryptPasswordEncoder.encode(m.getMemPwd());
		m.setMemPwd(encPwd);
		
		int result = mService.updateMember(m);
		
		Member loginUser = mService.loginMember(m);

		if(result >0) {
			session.setAttribute("loginUser", loginUser);
			model.addAttribute("loginUser", loginUser);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('수정이 완료되었습니다.'); history.go(-2);</script>");
				out.flush();
				
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}else {
			model.addAttribute("msg", "회원정보수정실패");
			return "common/errorPage";
		}
		
		return "user/member/myPage";
		
		}
	
	
	@RequestMapping("memDelete.do")
	public String memDelete(){
		return "user/member/memDelete";
	}
	

	@RequestMapping("mDelete.do")
	public String mDelete(Member m, Model model, HttpServletRequest request, HttpServletResponse response, @RequestParam("why") String why){
	
		HttpSession session = request.getSession();
		
		if(!why.equals("")) { //주소 작성해서 값이 넘어왔을 경우
			m.setMemAddress(why);	
		}
		
		

		
	Member loginUser = mService.loginMember(m);
	System.out.println(loginUser);
		
	if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemPwd(), loginUser.getMemPwd())) { // 로그인에 성공했을 경우
		
			int result = mService.deleteMember(m);
			
			if(result >0) {
				session.setAttribute("loginUser", loginUser);
				model.addAttribute("loginUser", loginUser);
				
				
				return "redirect:logout.do";
			}else {
				model.addAttribute("msg", "회원정보수정실패");
				return "user/common/errorPage";
			}
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('비밀번호가 틀렸습니다. 다시 입력해주세요!'); history.go(-1);</script>");
				out.flush();
				
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			return "user/member/memDelete";
		}
		
	}
	
	
	

	
	
	
	
	/*
	 * 
	 * 
	 * 관리자용
	 * 
	 * 
	 * 
	 */


	
	@RequestMapping("aBlackList.do")
	public ModelAndView aBlacklist(ModelAndView mv) {
		
		ArrayList<Member> list = mService.selectBlackList();
		
		mv.addObject("list", list).setViewName("admin/member/blackList");
		
		
		return mv;
	}
	
	@RequestMapping("goUnBlack.do")
	public String aUpdateUnBlack(int memNum) {
		
		int result = mService.updateUnBlackList(memNum);
		
		if(result > 0 ) {
			return "redirect:aBlackList.do";
		}else {
			return "common/errorPage";
		}
		
		
	}
	

	
	
	@RequestMapping("aMemDetail.do")
	public ModelAndView memberDetail(int memNum) {
		
		ModelAndView mv = new ModelAndView();
		
		Member m = mService.selectMember(memNum);
		
		Creator cre = creService.getCreator(memNum);
		
		ArrayList<SingleCourse> coList = null;
		
		ArrayList<SingleCourse> coListU = null;

		CreatorAttachment cra = null;
		
		ArrayList<CreatorAttachment> craList = null;
		
		if(cre != null) {
		
		coList = coService.mySingleCourseList(cre.getCreNum());
		
		coListU = coService.selectMyTakeCourse(m.getMemNum());
		
		cra = creService.selectMyProFile(cre.getCreNum());
		
		craList = creService.selectCreatorAttachmentList(cre.getCreNum());
		
		}
		
		int countList = pService.getListCount(memNum);
		
		ArrayList<Payment> pList = null;
		
		if(countList > 0) {
		
			pList = pService.selectMyPaymentList(memNum);
		
		}
	
		
		mv.addObject("m", m).addObject("pList", pList).addObject("coListU", coListU).addObject("cre", cre).addObject("coList", coList).addObject("cra", cra).addObject("craList", craList).setViewName("admin/member/memDetail");
		
		return mv;
		
	}
	
	@RequestMapping("goBlack.do")
	public String updateBlackList(int memNum) {
		
		int result = mService.updateBlackList(memNum);
		
		if(result > 0) {
			
			return "redirect:aBlackList.do";
			
		}else {
			
			return "common/errorPage";
			
		}
		
	}
	
	@RequestMapping("aMemberList.do")
	public ModelAndView selectMemberList(ModelAndView mv) {
		
		ArrayList<Member> list = mService.selectMemberList();
		
		int sizee = list.size();
		
		mv.addObject("list", list).addObject("sizee", sizee).setViewName("admin/member/memberList");
		
		return mv;
		
	}
	
	@RequestMapping("updateMemProfile.do")
	public ModelAndView updateMemProfile(@RequestParam(name="profile", required=false) MultipartFile profile,
			HttpServletRequest request, ModelAndView mv) {
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		int result;
		if(!profile.getOriginalFilename().equals("")) {
			String rename = saveFile(profile, request);
			loginUser.setMemProfileName(rename);
			loginUser.setMemProfilePath("resources\\user\\img\\profile\\");
			result = mService.updateMemProfile(loginUser);
		}
		
		Member newloginUser  = mService.loginMember(loginUser);
		request.getSession().removeAttribute("loginUser");
		request.getSession().setAttribute("loginUser", newloginUser);
		mv.addObject("loginUser", newloginUser).addObject("msg","수정되었습니다.").setViewName("user/member/memUpdate");
		
		return mv;
	}
	
	   /** 4. 파일 저장하기 
	    * @param file
	    * @param request
	    * @return
	    */
	   public String saveFile(MultipartFile file, HttpServletRequest request) {
	      
	      //파일이 저장될 경로 설정
	      String root = request.getSession().getServletContext().getRealPath("resources");
	      String savePath = root + "\\user\\img\\profile";
	      
	      File folder = new File(savePath); //저장될 폴더 지정 
	      
	      if(!folder.exists()) {
	         folder.mkdir();
	      }
	      
	      String originalFileName = file.getOriginalFilename(); //원본명
	      
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	      String renameFileName = sdf.format(new Date(System.currentTimeMillis())) 
	                        + originalFileName.substring(originalFileName.lastIndexOf("."));
	      
	      
	      String renamePath = savePath + "\\" + renameFileName;
	      
	      //서버에 저장
	      try {
	         file.transferTo(new File(renamePath));
	         
	      } catch (IllegalStateException e) {
	         e.printStackTrace();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	      
	      
	      return renameFileName;
	   }
	   

	

	
	
	//----------------------------------------------------------------------------------
	/*
	 * 크리에이터센터용
	 * 
	 */
	
	/**
	 * @param request
	 * @return
	 */
	@RequestMapping("studentManage.do")
	public ModelAndView studentManage(@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, 
									HttpServletRequest request, ModelAndView mv) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		int stuCount = mService.getStuCount(creNum);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, stuCount);
		System.out.println(pi);
		ArrayList<Member> studentList = mService.selectStuList(pi, creNum);
		System.out.println("count : " + stuCount);
		System.out.println(pi);
		
		mv.addObject("studentList", studentList);
		mv.setViewName("creator/student/studentManage");
		
		return mv;
	}
//-------------------------------------- 마이페이지 리뷰 작성--------------------------------
	@RequestMapping("insertReview.do")
	public ModelAndView insertReviews(ModelAndView mv,int courseNum) {
		mv.addObject("courseNum",courseNum).setViewName("user/member/insertReview");
		
		return mv;
	}
	@RequestMapping("reviewInsert.do")
	public String insertReview(HttpServletRequest request,int courseNum,Model model,
			@RequestParam("star-input") int reviewScore,
			@RequestParam("feedback") String rContent) {
		
		System.out.println(courseNum);
		Member loginUser= (Member)request.getSession().getAttribute("loginUser");
		int memNum=loginUser.getMemNum();
		Review review= new Review();
		review.setCourseNum(courseNum);
		review.setMemNum(memNum);
		review.setReviewContent(rContent);
		review.setReviewScore(reviewScore);
		int result= mService.insertReview(review);
		if(result>0) {
			
			return "redirect:memClass.do";
		}else {
			
			model.addAttribute("msg","회원가입 실패!!");
			return "common/errorPage";
		}
	}
	
}
	
