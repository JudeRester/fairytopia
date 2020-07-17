package com.yju.fairytopia;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
//			log.info(list.toString());
			model.addAttribute("wplist", list);
			return "/author/studio";
		}
	}

	@PostMapping("/createwp")
	public String createWP(WorkplaceVO vo, @RequestParam("workplace_thumbnail") MultipartFile file) {
		log.info("createWP : " + vo);
		String path;
		String[] token;
		service.createWorkplace(vo);

		path = "d:\\fairy\\workplace\\" + vo.getWorkplace_id();
		File Folder = new File(path);
		String originName = file.getOriginalFilename();
		System.out.println(originName.lastIndexOf("."));

		// 해당 디렉토리가 없을경우 디렉토리를 생성
//		return "redirect:/";

		if (!Folder.exists()) {
			try {
				Folder.mkdir(); // 폴더 생성합니다.
				System.out.println("폴더가 생성되었습니다.");

			} catch (Exception e) {
				e.getStackTrace();
			}
		} else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}
		saveFile(file, "0" + originName.substring(originName.lastIndexOf(".")), path);

		service.addAuthor(vo);
		
		return "redirect:/author/studio";
	}

	private String saveFile(MultipartFile file, String filename, String UPLOAD_PATH) {
		// 파일 이름 변경
		String saveName = filename;
		log.info(file.getOriginalFilename());
		log.info("saveName: {}", saveName);

		// 저장할 File 객체를 생성(껍데기 파일)ㄴ
		File saveFile = new File(UPLOAD_PATH, saveName); // 저장할 폴더 이름, 저장할 파일 이름

		try {
			file.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return saveName;
	} // end saveFile(
}
