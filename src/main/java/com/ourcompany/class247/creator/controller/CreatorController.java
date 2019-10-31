package com.ourcompany.class247.creator.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.creator.model.service.CreatorService;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.member.model.service.MemberService;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.payment.model.service.PaymentService;
import com.ourcompany.class247.payment.model.vo.Chart;

@SessionAttributes("creator")
@Controller
public class CreatorController {
	
	@Autowired
	private CreatorService creService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private CourseService coService;
	
	@Autowired 
	private PaymentService pService;
	
	
	/** 크리에이터 메인페이지로 이동
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("cMainView.do")
	public ModelAndView goToMain(HttpServletRequest request, HttpSession session, ModelAndView mv) { 
		int memNum = ((Member)session.getAttribute("loginUser")).getMemNum();
		Creator creator = creService.getCreator(memNum);
		System.out.println(creator);

		if(creator != null) { //크리에이터 존재 시 
			int creNum = creator.getCreNum();
			int totalStuCount = mService.getStuCount(creNum);
			int classCount = coService.getCourseCount(creNum);
			String totalAmount = String.format("%,d", pService.getCreAmount(creNum));
			String creProfile = creService.getCreProfile(creNum);
			request.getSession().setAttribute("creProfile", creProfile);
			ArrayList<Course> list = coService.selectMyCoList(creNum);
			
			for(Course c : list) {
				System.out.println(c);
			}
			ArrayList<CourseAttachment> coverList = coService.selectCoverList(creNum);
			mv.addObject("list", list).addObject("coverList", coverList);
			mv.addObject("creator", creator).addObject("totalStuCount", totalStuCount).addObject("classCount", classCount).addObject("totalAmount",totalAmount);
			mv.setViewName("creator/creatorCenter");
		} else { //크리에이터가 아닐 때 
			mv.addObject("creator", creator);
			mv.setViewName("creator/creatorCenter");
		}
		return mv;
		
	}
	
	/** 1. 크리에이터 신청 폼으로 이동 
	 * @return
	 */
	@RequestMapping("creatorFormView.do")
	public String creatorFormView() {
		return "creator/creator/creRegistration";
	}
	
	/** 2. 크리에이터 추가하기 
	 * @param creator
	 * @param request
	 * @param profile
	 * @param creID
	 * @return
	 */
	@RequestMapping("creInsert.do")
	public String insertCreator(Creator creator, HttpServletRequest request,
								@RequestParam(name="creProfile", required=false) MultipartFile profile,
								@RequestParam(name="creID", required=false) MultipartFile creID) {
		
		int result = creService.insertCreator(creator);
		
		
		if(!profile.getOriginalFilename().equals("")) { //프로필 첨부사진이 존재하면 
			
			String profileRename = saveFile(profile, request);
			
			if(profileRename != null) {
				CreatorAttachment caProfile = new CreatorAttachment();
				caProfile.setCraRname(profileRename);
				caProfile.setCraOname(profile.getOriginalFilename());
				caProfile.setCraPath(request.getSession().getServletContext().getRealPath("resources") + "\\creator\\creatorImages");
				
				creService.insertProfile(caProfile, creator.getMemNum());
			}
		}
		
		
		if(!creID.getOriginalFilename().equals("")) {
			String idRename = saveFile(creID, request);
			
			if(idRename != null) {
				CreatorAttachment caId = new CreatorAttachment();
				caId.setCraRname(idRename);
				caId.setCraOname(profile.getOriginalFilename());
				caId.setCraPath(request.getSession().getServletContext().getRealPath("resources") + "\\creator\\creatorImages");
				
				creService.insertID(caId, creator.getMemNum());
			}
			
		}
		
		
		if(result > 0) {
			return "redirect:cMainView.do";
		} else {
			return "common/errorPage";
		}
		
		
	}
	
	
	/** 3. 크리에이터 마이페이지로 이동 
	 * @return
	 */
	@RequestMapping("creatorInfo.do")
	public String creatorInfo() {
		
		return "creator/creator/creInfoPage";
	}
	
	
	
	/** 4. 파일 저장하기 
	 * @param file
	 * @param request
	 * @return
	 */
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		
		//파일이 저장될 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\creator\\creatorImages";
		
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
	
	
	@RequestMapping("aAwaitCreatorList.do")
	public ModelAndView aSelectList() {
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<Creator> list = creService.awaitSelectList();
		
		mv.addObject("list", list).setViewName("admin/member/awaitCreatorList");
				
		return mv;
	}
	/** 5. 크리에이터 정보 수정
	 * 
	 */
	@RequestMapping("creUpdate.do")
	public ModelAndView updateCreator(Creator newCre, HttpServletRequest request, ModelAndView mv) {
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		if(loginUser.getMemNum() == newCre.getMemNum()) {
			System.out.println(newCre);
			
			int result = creService.updateCreator(newCre);
			if(result > 0) {
				System.out.println(result);
				mv.addObject("creator", newCre);
				request.getSession().setAttribute("msg", "정보수정이 완료되었습니다.");
				mv.setViewName("redirect:creatorInfo.do");
			}
			
		}
		
		return mv;
	}
	
	/** 크리에이터 프로필 사진 변경 
	 * @param profile
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping("updateProfile.do")
	public String updateCreatorProfile(@RequestParam(name="file", required=false) MultipartFile profile,
										HttpServletRequest request) {
		Creator creator = (Creator)request.getSession().getAttribute("creator");
		String rename = saveFile(profile, request);
		CreatorAttachment update = new CreatorAttachment(creator.getCreNum(), profile.getOriginalFilename(), rename);
		int result = creService.updateProfile(update);
		
		if( result > 0) {
			request.getSession().setAttribute("creProfile", rename);
			return rename;
		} else {
			return "fail";
		}
	}
	
	
	@RequestMapping("aAwaitCreatorDetail.do")
	public ModelAndView aCreatorDetail(ModelAndView mv, int creNum) {
		
		Creator cre = creService.selectACreator(creNum);
		
		Member m = mService.selectAMember(creNum);
		
		ArrayList<CreatorAttachment> craList = creService.selectCreatorAttachmentList(creNum);
		
		mv.addObject("cre", cre).addObject("craList", craList).addObject("m", m).setViewName("admin/member/awaitCreatorDetail");
		
		return mv;
		
	}
	
	@RequestMapping("aApprovalCreator.do")
	public String aApprovalCreator(int creNum, int memNum) {
		
		int result1 = creService.allowCreator(creNum);
		int result2 = mService.allowCreator(memNum);
				
		if(result1+result2 > 1 ) {
		
			return "redirect:aAwaitCreatorList.do";
		}else {
			return "common/errorPage";
		}

	}
	
	/** 해당 크리에이터의 클래스가 존재하는지 확인하는 서비스 
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping("existCourse.do")
	public String getCourseCount(HttpServletRequest request) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		
		int courseCount = creService.getCourseCount(creNum);
		if(courseCount == 0) {
			return "success";
		} else {
			return "fail";
		}
	
	
		
	}
	
	@RequestMapping("aRejectCreator.do")
	public String aRejectCourse(int creNum) {
		
		int result = creService.rejectCreator(creNum);
		
		if(result > 0 ) {
			return "redirect:aAwaitCreatorList.do";
		}else {
			return "common/errorPage";
		}
	}
	
	@RequestMapping("aCreatorList.do")
	public ModelAndView selectCreatorList(ModelAndView mv) {
		
		ArrayList<Creator> crList = creService.selectCreatorList();
		
		ArrayList<CreatorAttachment> craList = creService.selectCreatorAttachmentList();
		
		mv.addObject("crlist", crList).addObject("craList", craList).setViewName("admin/member/creatorList");
		
		return mv;
		
	}
	
	@RequestMapping("deleteCreator.do")
	public ModelAndView deleteCreator(HttpServletRequest request, ModelAndView mv) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		
		int result = creService.deleteCreator(creNum);
		if(result > 0) {
			request.getSession().removeAttribute("creator");
			request.getSession().setAttribute("msg", "크리에이터 탈퇴가 완료되었습니다. class247 사용자 정보는 유지됩니다 :)");
			mv.setViewName("redirect:home.do");
		} else {
			mv.addObject("msg", "탈퇴 실패");
			mv.setViewName("creator/creatorCenter");
		}
		
		return mv;
		
	}
	
	
	
	/** 차트 구하기 
	 * @param month
	 */
	@RequestMapping("getChart.do")
	public void getChart(@RequestParam(name="month") int month, HttpServletResponse response) throws JsonIOException, IOException{
		Chart chart = new Chart();
		chart.setCourseNum(113);
		chart.setCreNum(3);
		chart.setForMonth(month);
		ArrayList<Chart> list = creService.getChart(chart);
		
		response.setContentType("application/json; charset=utf-8");
		
		for(Chart c: list) {
			System.out.println(c);
		}
		
		Gson gson = new Gson();
		gson.toJson(list, response.getWriter());
	}
	
	@RequestMapping("powerLink.do")
	public String goMDpage() {
		
		return "creator/MD/MDregister";
	}
	


}
