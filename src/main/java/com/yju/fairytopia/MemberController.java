package com.yju.fairytopia;

import java.io.File;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yju.domain.MemberVO;
import com.yju.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MemberService service;

	@GetMapping(value = "/join")
	public String join() {
		log.info("join");
		return "member/join";
	}

	@GetMapping(value = "/checkId")
	@ResponseBody
	public int checkId(String mem_id) {
		log.info("check ID :" + mem_id);
		log.info("" + service.checkId(mem_id));
		return service.checkId(mem_id);
	}

	@PostMapping(value = "/join")
	public String joinPro(MemberVO vo, @RequestParam("mem_id_join") String mem_id,
			@RequestParam("mem_passwd_join") String mem_passwd) {
		vo.setMem_id(mem_id);
		vo.setMem_passwd(mem_passwd);
		log.info("register:" + vo);
		service.join(vo);
		return "redirect:/";
	}

	@PostMapping(value = "/login")
	@ResponseBody
	public int login(MemberVO vo, HttpServletRequest request) {
		log.info("login...\n"+vo);
		vo = service.login(vo);
		if (vo != null) {
			HttpSession session = request.getSession();
			vo.setMem_passwd(null);
			session.setAttribute("user", vo);
			return 0;
		} else {
			return 1;
		}
	}
	
	@GetMapping(value="/logout")
	public void logout(HttpServletRequest request) {
		log.info("logout....");
		HttpSession session = request.getSession();
		session.invalidate();
	}
	
	@GetMapping("/profile")
	public void profile(Model model, HttpServletRequest request) {
		log.info("profile");
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("user");
		log.info(vo.toString());
		model.addAttribute("profile",service.profile(vo.getMem_id()));
	}
	
	@PostMapping("/photoupload")
	@ResponseBody
	public void photoUpload(@RequestParam("file") MultipartFile multipartfile, @RequestParam("mem_id") String mem_id) {
		
		String prefixPath = "d:\\fairy\\profile\\"+mem_id+"\\";
		String fileName = "profile";
		File file = new File(prefixPath, fileName);
		
		try {
			InputStream fileStream = multipartfile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, file);
			log.info("upload complete");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
