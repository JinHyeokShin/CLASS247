package com.ourcompany.class247.creator.creator.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.ourcompany.class247.creator.creator.model.service.CreatorService;
import com.ourcompany.class247.creator.creator.model.vo.Creator;
import com.ourcompany.class247.creator.creator.model.vo.CreatorAttachment;
import com.ourcompany.class247.member.model.vo.Member;

@SessionAttributes("creator")
@Controller
public class CreatorController {
	
	@Autowired
	private CreatorService creService;
	
	
	@RequestMapping("cMainView.do")
	public String goToMain(HttpSession session, Model model) { 
		int userId = ((Member)session.getAttribute("loginUser")).getMemNum();
		Creator creator = creService.getCreator(userId);
		System.out.println("로그인 크리에이터는? : " + creator);
		if(creator != null) {
			model.addAttribute("creator", creator);
			return "creator/creatorCenter";
		} else {
			return "creator/test";
		}
		
		
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
				caProfile.setCraPath(request.getSession().getServletContext().getRealPath("resources") + "creator\\creatorImages");
				
				creService.insertProfile(caProfile, creator.getMemNum());
			}
		}
		
		if(!creID.getOriginalFilename().equals("")) {
			String idRename = saveFile(creID, request);
			
			if(idRename != null) {
				CreatorAttachment caId = new CreatorAttachment();
				caId.setCraRname(idRename);
				caId.setCraOname(profile.getOriginalFilename());
				caId.setCraPath(request.getSession().getServletContext().getRealPath("resources") + "creator\\creatorImages");
				
				creService.insertID(caId, creator.getMemNum());
			}
			
		}
		
		
		if(result > 0) {
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


}
