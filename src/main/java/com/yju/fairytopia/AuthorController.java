package com.yju.fairytopia;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yju.domain.MemberVO;
import com.yju.domain.WorkplaceVO;
import com.yju.service.StudioService;

@Controller
@RequestMapping("/author")
public class AuthorController {
	private static final Logger log = LoggerFactory.getLogger(AuthorController.class);

	@Autowired
	private StudioService service;

	@GetMapping("/studio")
	public String studio(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("user") == null
				|| ((MemberVO) request.getSession().getAttribute("user")).getMem_aut() == 0) {
			return "redirect:/";
		} else {
			List<WorkplaceVO> list = service.getList((MemberVO) request.getSession().getAttribute("user"));
			log.info(list.toString());
			model.addAttribute("wplist", list);
			return "/author/studio";
		}
	}

	@PostMapping("/createwp")
	public void createWP(WorkplaceVO vo) {
		
		String path;
		service.createWorkplace(vo);
		
		path="d:\\fairy\\workplace\\"+vo.getWorkplace_id();
		File Folder = new File(path);

		// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
		if (!Folder.exists()) {
			try{
			    Folder.mkdir(); //폴더 생성합니다.
			    System.out.println("폴더가 생성되었습니다.");
		        } 
		        catch(Exception e){
			    e.getStackTrace();
			}        
	         }else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}
		
		service.addAuthor(vo);
//		return "redirect:/";
	}
}
