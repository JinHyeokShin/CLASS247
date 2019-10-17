package com.ourcompany.class247.course.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Love;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;
import com.ourcompany.class247.creator.model.service.CreatorService;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.member.model.service.MemberService;
import com.ourcompany.class247.member.model.vo.Member;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService coService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private CreatorService creService;
	
	
	/** 1. 클래스 추가시 오프라인/온라인 페이지 이동 
	 * @param co
	 * @param mv
	 * @return
	 */
	@RequestMapping("coNext.do")
	public ModelAndView insertCourse(Course co,  ModelAndView mv) {
		
			
			if(co.getCourseKind().equals("online")) {
				mv.addObject("co", co);
				mv.setViewName("creator/course/nextOnline");
			} else {
				mv.addObject("co", co);
				mv.setViewName("creator/course/nextOffline");
			}
			
			return mv;

			
	}
	
	
	
	
	/** 2. 온라인수업 추가 
	 * @param co
	 * @param online
	 * @param request
	 * @param coverImage
	 * @return
	 */
	@RequestMapping("onlineInsert.do")
	public String insertOnline(Course co, Online online, HttpServletRequest request,
							@RequestParam(name="coverImage") MultipartFile coverImage) {
		
		
		int result = coService.insertCourse(co, online);
		
		
		if(result > 0) {
			if(!coverImage.getOriginalFilename().equals("")) {
				String coverRename = saveFile(coverImage, request);
				
				if(coverRename != null) {
					CourseAttachment cover = new CourseAttachment();
					cover.setCoaRName(coverRename);
					cover.setCoaOName(coverImage.getOriginalFilename());
					cover.setCoaPath(request.getSession().getServletContext().getRealPath("resources") + "\\course\\images");
					
					coService.insertCoverImage(cover);
				}
				
			}
			return "redirect:cMainView.do";
		} else {
			return "common/errorPage";
		}
		
	}
	
	/** 3. 오프라인 클래스 추가 
	 * @param co
	 * @param offline
	 * @param request
	 * @param coverImage
	 * @param area
	 * @param city
	 * @return
	 */
	@RequestMapping("offlineInsert.do")
	public String insertOffline(Course co, Offline offline, HttpServletRequest request,
								@RequestParam(name="coverImage") MultipartFile coverImage,
								@RequestParam(name="area") String area, @RequestParam(name="city") String city) {
		
		String courseArea = area + "," + city;
		offline.setCourseArea(courseArea);
		
		int result = coService.insertCourse(co, offline);
		
		if(result > 0) {
			if(!coverImage.getOriginalFilename().equals("")) {
				String coverRename = saveFile(coverImage, request);
				
				if(coverRename != null) {
					CourseAttachment cover = new CourseAttachment();
					cover.setCoaRName(coverRename);
					cover.setCoaOName(coverImage.getOriginalFilename());
					cover.setCoaPath(request.getSession().getServletContext().getRealPath("resources") + "\\course\\images\\");
					
					coService.insertCoverImage(cover);
				}
			}
			return "redirect:cMainView.do";
			
		} else {
			return "common/errorPage";
		}
		
		
	}
		
	
	
	/** 3. 파일 저장하기 
	 * @param file
	 * @param request
	 * @return
	 */
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		
		//파일이 저장될 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\course\\images";
		
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
	
	
	/** 메뉴바(내 클래스 관리) 
	 * @param request
	 */
	@RequestMapping("coManageView.do")
	public ModelAndView coManageView(HttpServletRequest request, ModelAndView mv) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		ArrayList<Course> list = coService.selectMyCoList(creNum);
		
		
		for (Course c : list) {
			System.out.println(c);
		}
		
		ArrayList<CourseAttachment> coverList = coService.selectCoverList(creNum);

		mv.addObject("list", list);
		mv.addObject("coverList", coverList);
		mv.setViewName("creator/course/coManagement");
		 return mv;
	}
	
	@RequestMapping("goOnline.do")
	public String goOnline() {
		return "user/course/onlineList";
	}
	
	@RequestMapping("goOffline.do")
	public String goOffline() {
		return "user/course/offlineList";
	}
	//김은기
	
	/**home에 강의리스트 불러오기
	 * @param mv
	 * @return
	 */
	@RequestMapping("home.do")
	public ModelAndView selectList(ModelAndView mv) {
		ArrayList<Course> list = coService.selectList();
		System.out.println(list);
		
		mv.addObject("list", list);
		mv.setViewName("home");
		
		return mv;
	}
	
	/**
	 * 강의 클릭시 불러오기
	 * @param cId
	 * @param mv
	 * @return
	 */
	@RequestMapping("aAwaitCourseList.do")
	public ModelAndView aSelectList(ModelAndView mv) {
		
		ArrayList<Course> list = coService.awaitSelectList();
		mv.addObject("list", list).setViewName("admin/course/awaitCourseList");
		
		return mv;
	}
	
	
	@RequestMapping("aAwaitCourseDetail.do")
	public ModelAndView selectCourse(int courseNum,String courseKind, ModelAndView mv) {
		
		System.out.println("실행");
		
		ArrayList<Love> list = coService.selectLove();
		
		System.out.println(list.size());
		
		
		Course co = coService.selectCourse(courseNum);
		
		mv.addObject("co", co);
			
		ArrayList<CourseAttachment> coaList = coService.selectCourseAttachmentList(courseNum);
		
		Creator cre = creService.selectCreatorCourse(courseNum);
		
		ArrayList<CreatorAttachment> craList = creService.selectCreatorAttachmentList(cre.getCreNum());
		
		Member m = mService.selectMember(cre.getMemNum());
		
		mv.addObject("coaList", coaList).addObject("cre", cre).addObject("craList", craList).addObject("m", m);
		
		mv.setViewName("admin/course/awaitCourseDetail");
		
		return mv;
		
	}
	
	/**
	 * 3. 수업 허락하기
	 * @param courseNum
	 * @return
	 */
	@RequestMapping("aApprovalCourse.do")
	public String aApprovalCourse(int courseNum) {
		
		int result = coService.allowCourse(courseNum);
		
		if(result > 0 ) {
		
			return "redirect:aAwaitCourseList.do";
		}else {
			return "common/errorPage";
		}
	}

}
