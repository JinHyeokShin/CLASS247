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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Love;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;
import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.creator.model.service.CreatorService;
import com.ourcompany.class247.creator.model.vo.Creator;
import com.ourcompany.class247.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.member.model.service.MemberService;
import com.ourcompany.class247.member.model.vo.Member;
import com.ourcompany.class247.review.model.vo.Review;

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
	
	
	/** 메뉴바(내 클래스 관리로 이동) 
	 * @param request
	 */
	@RequestMapping("coManageView.do")
	public ModelAndView coManageView(HttpServletRequest request, ModelAndView mv) {
		int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
		ArrayList<Course> list = coService.selectMyCoList(creNum);
		//승인 대기중인 클래스 불러오기 
		ArrayList<Course> awaitList = coService.selectAwaitByCreNum(creNum);

		ArrayList<CourseAttachment> coverList = coService.selectCoverList(creNum);

		mv.addObject("list", list);
		mv.addObject("awaitList", awaitList);
		mv.addObject("coverList", coverList);
		mv.setViewName("creator/course/coManagement");
		 return mv;
	}
	
	
	 
	/** 크리에이터센터 
	 * 내 클래스관리 -> 클래스 디테일 (수강정보 + 수강생정보)
	 */
	@RequestMapping("myCourseDetail.do")
	public ModelAndView myCourseDetail(int courseNum, String courseKind, ModelAndView mv) {
		
		Course course = coService.selectCourse(courseNum, courseKind);
		CourseAttachment cover = coService.selectCover(courseNum);
		ArrayList<Member> stuList = mService.selectStuByCo(courseNum);
		
		/* System.out.println(course); */
		
		mv.addObject("co", course);
		mv.addObject("cover", cover);
		mv.addObject("stuList", stuList);
		mv.setViewName("creator/course/myCourseDetail");
		
		return mv;
	}

	//김은기
	
	/**home에 강의리스트 불러오기
	 * @param mv
	 * @return
	 */
	@RequestMapping("home.do")
	public ModelAndView selectList(ModelAndView mv, HttpServletRequest request) {
		//크리에이터 센터 나가면서 세션에 올려둔 크리에이터 객체 삭제. 
		Creator creator = (Creator)request.getSession().getAttribute("creator");
		if(creator != null) {
			request.getSession().removeAttribute("creator");
			request.getSession().removeAttribute("creProfile");
		}
		
		
		ArrayList<Course> list = coService.selectList();

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
	@RequestMapping("codetail.do")
	public ModelAndView courseDetail(int courseNum, ModelAndView mv, HttpServletRequest request) {
		
		Member loginUser=(Member)request.getSession().getAttribute("loginUser");
		ArrayList<Review> rlist = coService.selectRlist(courseNum); 
		
		System.out.println(rlist);
		boolean checkLove=false;
		if(loginUser !=null) {
			Love love= new Love(courseNum, loginUser.getMemNum());
			
			checkLove= coService.checkLove(love); 
		}
		Course c = coService.selectCourse(courseNum);
		
		if(c != null) {
			mv.addObject("c", c)
			.addObject("checkLove", checkLove).addObject("rlist", rlist)
			  .setViewName("creator/course/userCourseDetail");
			
		}else {
			mv.addObject("msg", "게시글 상세조회실패!")
			  .setViewName("common/errorPage");
		}
		
		return mv;
		
	}

	
	
	@RequestMapping("aAwaitCourseDetail.do")
	public ModelAndView selectCourse(int courseNum,String courseKind, ModelAndView mv) {
		
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
	
	@RequestMapping("aRejectCourse.do")
	public String aRejectCourse(int courseNum) {
		
		int result = coService.rejectCourse(courseNum);
		
		if(result > 0 ) {
		
			return "redirect:aAwaitCourseList.do";
		}else {
			return "common/errorPage";
		}
	}
	
	
	
	
	
	/*****************************사용자*************/
	
	/**
	 * 1. 찜하기폼으로 이동.
	 * @return
	 */
	@RequestMapping("memZzim.do")
	public ModelAndView memZzim(HttpServletRequest request, ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage ) {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		int memNum = loginUser.getMemNum();
		int listCount = coService.getListCount(memNum);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Love> lovelist = coService.lovelist(memNum, pi);
		
		mv.addObject("pi",pi).addObject("lovelist", lovelist);
		mv.setViewName("user/member/memZzim");
	
		
		return mv;
	}
	
	
	
	
	/*
	 * 
	 * SingleCourse
	 * 
	 * 
	 */
	@RequestMapping("aAwaitCourseList.do")
	public ModelAndView aSelectList() {
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<SingleCourse> list = coService.awaitSelectList();
		
		mv.addObject("list", list).setViewName("admin/course/awaitCourseList");
		
		return mv;
	}
	
	/*
	@RequestMapping("mZzim.do")
	public ModelAndView mZzim(HttpServletRequest request, ModelAndView mv, @RequestParam(name="check") int check
			, @RequestParam(value="currentpage", required=false, defaultValue="1")int currentPage) {
	
	Member loginUser = (Member)request.getSession().getAttribute("loginUser");
	
	//String[] checklist = check.split(",");
	//for(String c : checklist) { }
		int memNum = loginUser.getMemNum();
		int listCount = coService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<Love> lovelist = coService.lovelist(memNum, pi);

		for(Love l : lovelist ) {
			 Love i = new Love();
			 i.setMemNum(memNum);
			 i.setCourseNum(check);
			 coService.deleteLove(i);
			}
	

		mv.setViewName("user/member/memZzim");
		return mv;
	}
	*/
	
	
	@RequestMapping("mZzim.do")
	public String mZzim(HttpServletRequest request, @RequestParam(name="check") int check
		) {
	
	Member loginUser = (Member)request.getSession().getAttribute("loginUser");
	
	//String[] checklist = check.split(",");
	//for(String c : checklist) { }
		int memNum = loginUser.getMemNum();
		
		Love i = new Love();
		
		i.setMemNum(memNum);
		i.setCourseNum(check);
		
		int result = coService.deleteLove(i);

		if(result > 0) {
			return "redirect:memZzim.do";
		}else {
			return "common/errorPage";
		}
			
	
			
	

	
	}
	

	/**  검색창에서 텍스트로 검색하는 메소드
	 * @param search
	 * @param mv
	 * @return
	 */
	@RequestMapping("searchmodal.do")
	public ModelAndView modalsearchList(String search, ModelAndView mv) {
		
		ArrayList<Course> list = coService.modalsearchList(search);
		
		mv.addObject("list", list).addObject("search",search).setViewName("user/course/searchList");
		
		return mv;
	}
	
	@RequestMapping("searchCategory.do")
	public ModelAndView modalsearchCategory(String categoryName, ModelAndView mv){
		ArrayList<Course> list = coService.modalsearchCategory(categoryName);
		mv.addObject("list", list).addObject("categoryName",categoryName).setViewName("user/course/searchCateList");
		
		return mv;
		
	}

	@RequestMapping("categoryList.do")
	public ModelAndView categoryList(ModelAndView mv) {
		ArrayList<Course> craftsList = coService.categoryCraftsList();
		ArrayList<Course> designList = coService.categoryDesignList();
		ArrayList<Course> developList = coService.categoryDevelopList();
		ArrayList<Course> digitalList = coService.categoryDigitalList();
		ArrayList<Course> lifeList = coService.categoryLifeList();
		ArrayList<Course> artList = coService.categoryArtList();
		ArrayList<Course> cameraList = coService.categoryCameraList();
		ArrayList<Course> signitureList = coService.categorySigitureList();
		ArrayList<Course> foodList = coService.categoryFoodList();
		ArrayList<Course> musicList = coService.categoryMusicList();
		ArrayList<Course> careerList = coService.categoryCareerList();

		/*
		 * System.out.println(craftsList); System.out.println(designList);
		 * System.out.println(developList); System.out.println(digitalList);
		 * System.out.println(lifeList); System.out.println(artList);
		 * System.out.println(cameraList); System.out.println(signitureList);
		 * System.out.println(foodList); System.out.println(musicList);
		 * System.out.println(careerList);
		 */
		
		mv.addObject("craftsList",craftsList)
		  .addObject("designList", designList)
		  .addObject("developList", developList)
		  .addObject("digitalList", digitalList)
		  .addObject("lifeList", lifeList)
		  .addObject("artList", artList)
		  .addObject("cameraList", cameraList)
		  .addObject("signitureList", signitureList)
		  .addObject("foodList", foodList)
		  .addObject("musicList", musicList)
		  .addObject("careerList", careerList)
		.setViewName("user/course/categoryList");
	
		return mv;
	}

	@ResponseBody
	@RequestMapping("insertLove.do")
	public String insertLove(@RequestParam int memNum, @RequestParam int courseNum   ) {
	
		Love iLove=new Love(memNum, courseNum);
		
			int result = coService.insertLove(iLove);
		
		if(result > 0) {
			return "success";
		}else {
			return "common/errorPage";
		}
		
	}
	@ResponseBody
	@RequestMapping("cancelLove.do")
	public String cancelLove(@RequestParam int memNum, @RequestParam int courseNum   ) {
	
		Love dLove=new Love(memNum, courseNum);
		
			int result = coService.cancelLove(dLove);
		
		if(result > 0) {
			return "success";
			
		}else {
			return "common/errorPage";
		}
		
	}
	
	@RequestMapping("coBuy.do")
	public ModelAndView coursePayment(HttpServletRequest request,int courseNum, String courseKind, ModelAndView mv) {
		Course c;
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
			if(loginUser ==null) {
				mv.setViewName("user/member/loginForm");
			}else {
			
			if(courseKind.equals("online")) {
				 c = coService.selectOnline(courseNum);
			}else {
				 c = coService.selectOffline(courseNum);
			}
			System.out.print(c);
			
			if(c != null) {
				mv.addObject("c", c)
				.setViewName("creator/course/userCourseDetail2");
				
			}else {
				mv.addObject("msg", "게시글 상세조회실패!")
				.setViewName("common/errorPage");
			}
		}
		
		return mv;
		
	}
	
//	@RequestMapping("codetail.do")
//	public ModelAndView courseDetail(int courseNum, ModelAndView mv, HttpServletRequest request) {
//		
//		Member loginUser=(Member)request.getSession().getAttribute("loginUser");
//		boolean checkLove=false;
//		if(loginUser !=null) {
//			Love love= new Love(courseNum, loginUser.getMemNum());
//			
//			checkLove= coService.checkLove(love); 
//		}
//		Course c = coService.selectCourse(courseNum);
//		
//		if(c != null) {
//			mv.addObject("c", c)
//			.addObject("checkLove", checkLove)
//			  .setViewName("creator/course/userCourseDetail");
//			
//		}else {
//			mv.addObject("msg", "게시글 상세조회실패!")
//			  .setViewName("common/errorPage");
//		}
//		
//		return mv;
//		
//	}
	@RequestMapping("goOnline.do")
	public ModelAndView onlinecategoryList(ModelAndView mv) {
		ArrayList<Course> craftsList = coService.onlinecategoryCraftsList();
		ArrayList<Course> designList = coService.onlinecategoryDesignList();
		ArrayList<Course> developList = coService.onlinecategoryDevelopList();
		ArrayList<Course> digitalList = coService.onlinecategoryDigitalList();
		ArrayList<Course> lifeList = coService.onlinecategoryLifeList();
		ArrayList<Course> artList = coService.onlinecategoryArtList();
		ArrayList<Course> cameraList = coService.onlinecategoryCameraList();
		ArrayList<Course> signitureList = coService.onlinecategorySigitureList();
		ArrayList<Course> foodList = coService.onlinecategoryFoodList();
		ArrayList<Course> musicList = coService.onlinecategoryMusicList();
		ArrayList<Course> careerList = coService.onlinecategoryCareerList();

		/*
		 * System.out.println(craftsList); System.out.println(designList);
		 * System.out.println(developList); System.out.println(digitalList);
		 * System.out.println(lifeList); System.out.println(artList);
		 * System.out.println(cameraList); System.out.println(signitureList);
		 * System.out.println(foodList); System.out.println(musicList);
		 * System.out.println(careerList);
		 */
		
		mv.addObject("craftsList",craftsList)
		  .addObject("designList", designList)
		  .addObject("developList", developList)
		  .addObject("digitalList", digitalList)
		  .addObject("lifeList", lifeList)
		  .addObject("artList", artList)
		  .addObject("cameraList", cameraList)
		  .addObject("signitureList", signitureList)
		  .addObject("foodList", foodList)
		  .addObject("musicList", musicList)
		  .addObject("careerList", careerList)
		.setViewName("user/course/offlineList");
	
		return mv;
	}
	@RequestMapping("goOffline.do")
	public ModelAndView offlineCategoryList(ModelAndView mv) {
		ArrayList<Course> craftsList = coService.offlinecategoryCraftsList();
		ArrayList<Course> designList = coService.offlinecategoryDesignList();
		ArrayList<Course> developList = coService.offlinecategoryDevelopList();
		ArrayList<Course> digitalList = coService.offlinecategoryDigitalList();
		ArrayList<Course> lifeList = coService.offlinecategoryLifeList();
		ArrayList<Course> artList = coService.offlinecategoryArtList();
		ArrayList<Course> cameraList = coService.offlinecategoryCameraList();
		ArrayList<Course> signitureList = coService.offlinecategorySigitureList();
		ArrayList<Course> foodList = coService.offlinecategoryFoodList();
		ArrayList<Course> musicList = coService.offlinecategoryMusicList();
		ArrayList<Course> careerList = coService.offlinecategoryCareerList();

		/*
		 * System.out.println(craftsList); System.out.println(designList);
		 * System.out.println(developList); System.out.println(digitalList);
		 * System.out.println(lifeList); System.out.println(artList);
		 * System.out.println(cameraList); System.out.println(signitureList);
		 * System.out.println(foodList); System.out.println(musicList);
		 * System.out.println(careerList);
		 */
		
		mv.addObject("craftsList",craftsList)
		  .addObject("designList", designList)
		  .addObject("developList", developList)
		  .addObject("digitalList", digitalList)
		  .addObject("lifeList", lifeList)
		  .addObject("artList", artList)
		  .addObject("cameraList", cameraList)
		  .addObject("signitureList", signitureList)
		  .addObject("foodList", foodList)
		  .addObject("musicList", musicList)
		  .addObject("careerList", careerList)
		.setViewName("user/course/offlineList");
	
		return mv;
	}
}

