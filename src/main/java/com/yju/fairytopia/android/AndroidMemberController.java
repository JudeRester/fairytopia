package com.yju.fairytopia.android;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yju.domain.MemberVO;
import com.yju.fairytopia.HomeController;
import com.yju.service.MemberService;

@Controller
@RequestMapping("/android/member")
public class AndroidMemberController {

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MemberService service;

	@GetMapping(value = "/checkId")
	@ResponseBody
	public int checkId(String mem_id) {
		log.info("check ID :" + mem_id);
		log.info("" + service.checkId(mem_id));
		return service.checkId(mem_id);
	}

	@PostMapping(value = "/join")
	public void joinPro(MemberVO vo, @RequestParam("mem_id_join") String mem_id,
			@RequestParam("mem_passwd_join") String mem_passwd) {
		vo.setMem_id(mem_id);
		vo.setMem_passwd(mem_passwd);
		log.info("register:" + vo);
		service.join(vo);
	}

	@PostMapping(value = "/login")
	@ResponseBody
	public MemberVO login(MemberVO vo, HttpServletRequest request) {
		log.info("login...\n"+vo);
		vo = service.login(vo);
		if (vo != null) {
			HttpSession session = request.getSession();
			vo.setMem_passwd(null);
			session.setAttribute("user", vo);
			return vo;
		} else {
			return null;
		}
	}
	
	@GetMapping(value="/logout")
	public void logout(HttpServletRequest request) {
		log.info("logout....");
		HttpSession session = request.getSession();
		session.invalidate();
	}
}