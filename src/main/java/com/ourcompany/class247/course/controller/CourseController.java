package com.ourcompany.class247.course.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ourcompany.class247.admin.controller.AStat;
import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.common.Pagination;
import com.ourcompany.class247.course.model.service.CourseService;
import com.ourcompany.class247.course.model.vo.Course;
import com.ourcompany.class247.course.model.vo.CourseAttachment;
import com.ourcompany.class247.course.model.vo.Love;
import com.ourcompany.class247.course.model.vo.Offline;
import com.ourcompany.class247.course.model.vo.Online;
import com.ourcompany.class247.course.model.vo.SingleCourse;
import com.ourcompany.class247.course.model.vo.Video;
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
   
   
   /** 메뉴바(내 클래스 관리로 이동) 
    * @param request
    */
   @RequestMapping("coManageView.do")
   public ModelAndView coManageView(HttpServletRequest request, ModelAndView mv) {
      int creNum = ((Creator)request.getSession().getAttribute("creator")).getCreNum();
      ArrayList<Course> list = coService.selectMyCoList(creNum);
      //승인 대기중인 클래스 불러오기 
      ArrayList<Course> awaitList = coService.selectAwaitByCreNum(creNum);
      ArrayList<Course> rejectList = coService.selectRejectByCreNum(creNum);
      System.out.println(rejectList.size() + "size");

      ArrayList<CourseAttachment> coverList = coService.selectCoverList(creNum);

      mv.addObject("list", list);
      mv.addObject("awaitList", awaitList).addObject("rejectList", rejectList);
      mv.addObject("coverList", coverList);
      mv.setViewName("creator/course/coManagement");
       return mv;
   }
   
   
    
   /** 크리에이터센터 
    * 내 클래스관리 -> 클래스 디테일 (수강정보 + 수강생정보)
    */
   @RequestMapping("myCourseDetail.do")
   public ModelAndView myCourseDetail(@RequestParam(value="courseNum") int courseNum, String courseKind, ModelAndView mv) {
      Course course = coService.selectCourse(courseNum, courseKind);
      CourseAttachment cover = coService.selectCover(courseNum);
      ArrayList<Member> stuList = mService.selectStuByCo(courseNum);
      ArrayList<Review> rlist = coService.selectRlist(courseNum); 
      
      for(Member m : stuList) {
    	  System.out.println(m);
      }
      /* System.out.println(course); */
      
      mv.addObject("co", course);
      mv.addObject("cover", cover);
      mv.addObject("stuList", stuList);
      mv.addObject("revlist", rlist);
      mv.setViewName("creator/course/myCourseDetail");
      
      return mv;
   }
   
   // 온라인 동영상 추가하기 페이지로 이동 
   @RequestMapping("goAddVideoPage.do")
   public ModelAndView goAddVideoPage(@RequestParam(value="courseNum") int courseNum, ModelAndView mv) {
	   mv.addObject("courseNum", courseNum).setViewName("creator/course/addVideoPage");	  
	   
	   return mv;
   }
   
   @RequestMapping("addOnlineVideo.do")
   public ModelAndView insertOnlineVideo(@RequestParam(value="courseNum") int courseNum, @RequestParam(value="videoContent") String videoContent, 
		   @RequestParam(value="videoTitle") String videoTitle,@RequestParam(value="videoUrl") String videoUrl,
		   ModelAndView mv) {
	   
	   String[] contentArr = videoContent.split(",");
	   String[] titleArr = videoTitle.split(",");
	   String[] urlArr = videoUrl.split(",");
	   String[] url = new String[urlArr.length];
	   for(int i=0; i<urlArr.length; i++) {
		   url[i] = urlArr[i].substring(17);
	   }
	   
	   if(url.length > 0) {
		   for(int i=0; i<url.length; i++) {
			   Video v = new Video(courseNum, url[i], titleArr[i],  contentArr[i]);
			   int result = coService.insertVideo(v);
			   if(result > 0)  {
				   
				   System.out.println(url.length + "개 동영상 추가 완료!");
				   mv.setViewName("creator/creatorCenter");
		   }
		   }
		   
	   } else {
		   
		   mv.setViewName("common/error");
		   
	   }
	   return mv;
	   //String url = videoUrl.substring(17, videoUrl.length());
	   //System.out.println("url = " + url);
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
		
		
		ArrayList<SingleCourse> poplist = coService.selectPopList(); // 인기 강의 조회
		ArrayList<Course> list = coService.selectList();			 // MD 추천 조회
		
		int memberCount = coService.selectMemberCount();			 // 멤버 숫자
		int creCount = coService.selectCreCount();					 // 크리에이터 숫자
		int onlineCourseCount = coService.onlineCourseCount();			 // 온라인 강의 숫자
		int offlineCourseCount = coService.offlineCourseCount();			 // 온라인 강의 숫자

		mv.addObject("list", list);
		mv.addObject("poplist", poplist);
		mv.addObject("memberCount",memberCount);
		mv.addObject("creCount",creCount);
		mv.addObject("onlineCourseCount",onlineCourseCount);
		mv.addObject("offlineCourseCount",offlineCourseCount);
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
	public ModelAndView courseDetail(int courseNum, String courseKind, ModelAndView mv, HttpServletRequest request) {
		
		Member loginUser=(Member)request.getSession().getAttribute("loginUser");
		ArrayList<Review> revlist = coService.selectRlist(courseNum); 
		
		int checkLove=1;
		if(loginUser !=null) {
			Love love= new Love();
		love.setCourseNum(courseNum);
		love.setMemNum( loginUser.getMemNum());
			
			checkLove= coService.checkLove(love); 
		}
		Course c = coService.selectCourse(courseNum);
		Creator creator= coService.selectCreator(c.getCreNum());
		
		if(c != null) {
			mv.addObject("c", c)
			.addObject("checkLove", checkLove).addObject("revlist", revlist).addObject("creator", creator)
		    .setViewName("user/course/userCourseDetail");
			
			
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
      
      ArrayList<Video> vo = coService.selectVideoList(courseNum);
      
      mv.addObject("coaList", coaList).addObject("cre", cre).addObject("craList", craList).addObject("m", m).addObject("vo", vo);
      
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
   
   @RequestMapping("aCourseList.do")
   public ModelAndView aCourseList(ModelAndView mv) {
	   
	   ArrayList<SingleCourse> list = coService.allCourseList();
	   
	   int sizee = list.size();
	   
	   mv.addObject("list", list).addObject("sizee", sizee).setViewName("admin/course/courseList");
	   
	   return mv;
	   
	   
   }
   
   @RequestMapping("aCourseDetail.do")
   public ModelAndView aCourseDetail(ModelAndView mv, int courseNum) {
	   
	   	  String courseKind = (coService.selectCourse(courseNum)).getCourseKind();
	      
	      Course course = coService.selectCourse(courseNum, courseKind);
	      CourseAttachment cover = coService.selectCover(courseNum);
	      ArrayList<Member> stuList = mService.selectStuByCo(courseNum);
	      ArrayList<Review> rlist = coService.selectRlist(courseNum); 
	      
	      
	      mv.addObject("co", course);
	      mv.addObject("cover", cover);
	      mv.addObject("stuList", stuList);
	      mv.addObject("revlist", rlist);
	      mv.setViewName("admin/course/courseDetail");
	      
	      return mv;
	   
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
		
		mv.addObject("pi",pi).addObject("lovelist", lovelist).addObject("listCount", listCount);
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
	
	
	@RequestMapping("mZzim.do")
	public String mZzim(HttpServletRequest request, Model model, HttpServletResponse response , @RequestParam(name="check") String[] check) {
		
	Member loginUser = (Member)request.getSession().getAttribute("loginUser");
	
	int memNum = loginUser.getMemNum();
	int result = 0;

	for(int a =0; a<check.length; a++) {
		Love i = new Love();

		i.setMemNum(memNum);
		
		i.setCourseNum(Integer.parseInt(check[a]));
		
		result += coService.deleteLove(i);

	};
	

		if(result == check.length) {
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
	        	 request.getSession().setAttribute("coNumNext", courseNum);
	            mv.setViewName("user/member/loginForm");
	         }else {
	            	c = coService.selectCourse(courseNum);
	            	
	            	
         
         if(c != null && c.getCourseKind().equals("offline")) {
            mv.addObject("c", c)
            .setViewName("user/course/userCourseDetailOff");
            
         }else if(c != null && c.getCourseKind().equals("online")){
        	 mv.addObject("c", c)
             .setViewName("user/course/userCourseDetailOn");
         }else {
        	 mv.addObject("msg", "게시글 상세조회실패!")
             .setViewName("common/errorPage");
         }
	   }
      
      return mv;
      
   }
   
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
		.setViewName("user/course/onlineList");
	
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
	
	@RequestMapping("goVideoList.do")
	public ModelAndView video(ModelAndView mv,int courseNum) {
		
		ArrayList<Video> list = coService.selectVideoList(courseNum);
		Course c = coService.selectCourse(courseNum);
		
		mv.addObject("list", list)
		  .addObject("c",c)
		  .setViewName("user/course/videoList");
		return mv;
	}
	
	@RequestMapping("vdetail.do")
	public ModelAndView videoDetail(ModelAndView mv,int videoCourse,int courseNum) {
		
		Course c = coService.selectCourse(courseNum);
		Video list = coService.selectVideo(videoCourse);
		System.out.println(courseNum);
		mv.addObject("c", c)
		  .addObject("list", list)
		  .setViewName("user/course/videoDetail");
		return mv;
	}
	
	@RequestMapping("deleteCourse.do")
	public ModelAndView deleteCourse(int courseNum, ModelAndView mv, HttpServletRequest request) {
		int result = coService.deleteCourse(courseNum);
		
		if(result > 0) {
			request.getSession().setAttribute("msg", "해당 클래스가 성공정으로 삭제되었습니다.");
			mv.setViewName("redirect:cMainView.do");
			
		} else {
			mv.addObject("msg", "삭제 실패");
			mv.setViewName("common/errorPage");
		}
		
		return mv;
		
	}
	
	
	
	 /** 추천가격 알고리즘 
	 * @return
	 */
	@ResponseBody
	@RequestMapping("aStat.do") 
	   public SingleCourse adminStat(int categoryNum, ModelAndView mv) {

	      System.out.println("추천알고리즘 들어옴 :" +categoryNum );
		
		 ArrayList<SingleCourse> personStat = coService.personStat(categoryNum);
		 
		 System.out.println(personStat);
		 
		 SingleCourse pes = new AStat().perStat(personStat);

		 return pes;	
		  

	   }
	

}
