package com.yju.fairytopia;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yju.domain.MemberVO;
import com.yju.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MemberService service;
	
	@GetMapping(value="/join")
	public String join() {
		log.info("join");
		return "member/join";
	}
	
	@GetMapping(value="/checkId")
	@ResponseBody
	public int checkId(String mem_id) {
		log.info("check ID :" + mem_id);
		log.info(""+service.checkId(mem_id));
		return service.checkId(mem_id);
	}
	
	@PostMapping(value="/join")
	public String joinPro(MemberVO vo,RedirectAttributes rttr) {
		log.info("register:" + vo);
		service.join(vo);
		return "redirect:/";
		
	}
}
