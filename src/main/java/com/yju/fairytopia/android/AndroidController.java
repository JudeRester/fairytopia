package com.yju.fairytopia.android;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yju.domain.BuyinglistVO;
import com.yju.domain.FairyTaleVO;
import com.yju.domain.MemberVO;
import com.yju.fairytopia.HomeController;
import com.yju.service.FairyTaleServiceImpl;
import com.yju.service.MemberService;

@Controller
@RequestMapping("/android")
public class AndroidController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MemberService service;
	
	@Autowired
	private FairyTaleServiceImpl buy;
	
	@PostMapping(value = "/fix")
	@ResponseBody
	public void updata(MemberVO vo) {
		service.update(vo);
	}

	@GetMapping(value = "/checkId")
	@ResponseBody
	public int checkId(String mem_id) {
		log.info("check ID :" + mem_id);
		log.info("" + service.checkId(mem_id));
		return service.checkId(mem_id);
	}

	@PostMapping(value = "/join")
	@ResponseBody
	public void joinPro(MemberVO vo) {
		log.info("register:" + vo);
		service.join(vo);
	}

	@PostMapping(value = "/login")
	@ResponseBody
	public MemberVO login(MemberVO vo, HttpServletRequest request) {
		log.info("login...\n"+vo);
		vo = service.login(vo);
		vo.setMem_passwd(null);
		return vo;
	}
	
	@PostMapping(value = "/update")
	@ResponseBody
	public void update(MemberVO vo) {
		log.info("update......"+ vo);
		service.update(vo);
	}
	
	
	@PostMapping(value = "/select")
	@ResponseBody
	public ArrayList<FairyTaleVO> select(MemberVO vo) {
		String mem_id = vo.getMem_id();
		log.info("select.....\n"+mem_id);
		return buy.select(vo);
	}
	
	@PostMapping(value = "/fairytale")
	@ResponseBody
	public ArrayList<FairyTaleVO> select() {
		return buy.fairytale();
	}

	@PostMapping(value = "/buyinsert")
	@ResponseBody
	public void buyinsert(BuyinglistVO vo) {
		buy.buyinsert(vo);
	}
	
	@PostMapping(value = "/recommendlist")
	@ResponseBody
	public ArrayList<FairyTaleVO> recommend() {
		return buy.recommendlist();
	}
	
	@PostMapping(value = "/tagrecommend")
	@ResponseBody
	public ArrayList<FairyTaleVO> tagrecommend() {
		int i = buy.maxcount();
		String tag = buy.gettag(i);
		if(tag!=null) {
			return buy.tagrecommend(tag);
		} else {
			return buy.recommendlist();
		}
	}
}
