package com.ourcompany.class247.creator.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

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
import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
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

		if(creator != null && creator.getCreStatus().equals("Y")) { //크리에이터 존재 시 
			int creNum = creator.getCreNum();
			int totalStuCount = mService.getStuCount(creNum);
			int classCount = coService.getCourseCount(creNum);
			String totalAmount = String.format("%,d", pService.getCreAmount(creNum));
			String creProfile = creService.getCreProfile(creNum);
			request.getSession().setAttribute("creProfile", creProfile);
			ArrayList<Course> list = coService.selectMyCoList(creNum);
			double score = coService.getScoreSum(creNum);
			ArrayList<CourseAttachment> coverList = coService.selectCoverList(creNum);
			mv.addObject("score", score);
			mv.addObject("list", list).addObject("coverList", coverList);
			mv.addObject("creator", creator).addObject("totalStuCount", totalStuCount).addObject("classCount", classCount).addObject("totalAmount",totalAmount);
			mv.setViewName("creator/creatorCenter");
		} else if(creator != null && creator.getCreStatus().equals("R")) { //크리에이터가 아닐 때 
			int creNum = creator.getCreNum();
			String creProfile = creService.getCreProfile(creNum);
			request.getSession().setAttribute("creProfile", creProfile);
			mv.addObject("creator", creator).setViewName("creator/creatorCenter");
		} else if(creator != null && creator.getCreStatus().equals("N")) {
			int creNum = creator.getCreNum();
			String creProfile = creService.getCreProfile(creNum);
			request.getSession().setAttribute("creProfile", creProfile);
			mv.addObject("creator", creator).setViewName("creator/creatorCenter");			
			
		} else {
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
								@RequestParam(name="creProfilee", required=false) MultipartFile profile,
								@RequestParam(name="creID", required=false) MultipartFile creID) {
		
		int result = creService.insertCreator(creator);
		
		
		if(!profile.getOriginalFilename().equals("")) { //프로필 첨부사진이 존재하면 
			
			String profileRename = saveFile(profile, request);
			
			if(profileRename != null) {
				CreatorAttachment caProfile = new CreatorAttachment();
				caProfile.setCraRname(profileRename);
				caProfile.setCraOname(profile.getOriginalFilename());
				caProfile.setCraPath(request.getSession().getServletContext().getRealPath("resources") + "\\creator\\creatorImages");
				request.getSession().setAttribute("creProfile", profileRename);
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
		String renameFileName3 = sdf.format(new Date(System.currentTimeMillis())) 
								+ originalFileName.substring(originalFileName.lastIndexOf("."));
		
		String renameFileName = renameFileName3.toLowerCase();
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
		
		System.out.println(list);
		
		String i;
		
		for(Creator c : list) {
			
			if((c.getIntroduction()).length() > 10) {
			
				i = c.getIntroduction();
			
				i.substring(0, 8);
				
				i = i+"..";
				
				c.setIntroduction(i);
			}
				
		}
		
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
		
		ArrayList<Creator> list = creService.selectCreatorList();
		
		String i;
		
		for(Creator c : list) {
			
			if((c.getIntroduction()).length() > 10) {
			
				i = c.getIntroduction();
			
				i.substring(0, 8);
				
				i = i+"..";
				
				c.setIntroduction(i);
			}
				
		}
		
		int sizee = list.size();
		
		mv.addObject("list", list).addObject("sizee", sizee).setViewName("admin/member/creatorList");
		
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
	

	/** 크리에이터 통계 페이지로 이동 
	 * @return
	 */
	@RequestMapping("editor.do")
	public ModelAndView editor(ModelAndView mv, HttpServletRequest request,
			@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		
		int salaryCount = creService.selectSalaryCount(creNum);
		PageInfo pi = Pagination.getPageInfo(currentPage, salaryCount);
		ArrayList<Chart> list = creService.selectCreSalary(pi, creNum);
		
		mv.addObject("salaryList", list).addObject("pi", pi);
		mv.setViewName("creator/creChart");
		return mv;
	}
	
	
	
	
	
	/** 차트 구하기 
	 * @param month
	 */
	@RequestMapping("getChart.do")
	public void getChart(@RequestParam(name="month") int month, HttpServletRequest request, HttpServletResponse response) throws JsonIOException, IOException{
		System.out.println("에이작스 입성" + month);
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		//온라인 최근 5개월 수입 가져오기 
		Chart onlineChart = new Chart(creNum, month);
		ArrayList<Chart> onlineList = creService.getOnlineChart(onlineChart);
		
		Chart offlineChart = new Chart(creNum, month);
		ArrayList<Chart> offlineList = creService.getOfflineChart(offlineChart);
		
		Chart totalChart = new Chart(creNum, month);
		ArrayList<Chart> totalList = creService.getChart(totalChart);
		
		
		for(Chart c : totalList) {
			System.out.println(c);
		}
		
		String[] months = new String[5];
		int[] online = new int[5];
		int[] offline = new int[5];

		for(int i=0; i<5; i++) {
			months[i] = onlineList.get(i).getForMonth() + "월";
			online[i] = onlineList.get(i).getAmount();
			offline[i] = offlineList.get(i).getAmount();
		}
		
		
		String[] toMonths = new String[6];
		int[] total = new int[6];		
		for(int i=0; i<6; i++) {
			toMonths[i] = totalList.get(i).getForMonth() + "월";
			total[i] = totalList.get(i).getAmount();
		}

		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("months", months);
		map.put("online", online);
		map.put("offline", offline);
		map.put("total", total);
		map.put("toMonths", toMonths);
		gson.toJson(map, response.getWriter());
		
		
	}
	
	@RequestMapping("powerLink.do")
	public ModelAndView goMDpage(HttpServletRequest request, ModelAndView mv) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		ArrayList<Course> list = creService.getCourseList(creNum);
		
		mv.addObject("list", list);
		mv.setViewName("creator/MD/MDregister");
		return mv;
	}
	 
	/** 크리에이터 거절시 재신청 페이지로 이동 
	 * @return
	 */
	@RequestMapping("goReRegister.do")
	public String goReRegisterPage() {
		return "creator/creator/creReRegistration";
	}
	
	/** 재신청서 업데이트 
	 * @return
	 */
	@RequestMapping("reRegister.do")
	public String updateRegister(Creator creator, HttpServletRequest request,
			@RequestParam(name="creProfilee", required=false) MultipartFile profile,
			@RequestParam(name="creID", required=false) MultipartFile creID) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		creator.setCreNum(creNum);
		
		int result = creService.reRegister(creator);
		
		
		if(!profile.getOriginalFilename().equals("")) { //프로필 첨부사진이 존재하면 
			
			String profileRename = saveFile(profile, request);
			
			if(profileRename != null) {
				CreatorAttachment caProfile = new CreatorAttachment();
				caProfile.setCraRname(profileRename);
				caProfile.setCraOname(profile.getOriginalFilename());
				caProfile.setCraPath(request.getSession().getServletContext().getRealPath("resources") + "\\creator\\creatorImages");
				caProfile.setCreNum(creNum);
				creService.reRegisterProfile(caProfile);
			}
		}
		
		
		if(!creID.getOriginalFilename().equals("")) {
			String idRename = saveFile(creID, request);
			
			if(idRename != null) {
				CreatorAttachment caId = new CreatorAttachment();
				caId.setCraRname(idRename);
				caId.setCraOname(profile.getOriginalFilename());
				caId.setCraPath(request.getSession().getServletContext().getRealPath("resources") + "\\creator\\creatorImages");
				caId.setCreNum(creNum);
				
				creService.reRegisterID(caId);
			}
			
		}
		
		
		if(result > 0) {
			return "redirect:cMainView.do";
		} else {
			return "common/errorPage";
		}
	}
	


}
