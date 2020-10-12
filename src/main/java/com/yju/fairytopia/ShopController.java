package com.yju.fairytopia;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yju.domain.Criteria;
import com.yju.domain.FairytaleDTO;
import com.yju.domain.PageDTO;
import com.yju.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopController {
private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@Autowired
	private ShopService service;
	
	@GetMapping(value = "")
	public String taleshop() {
		return "/shop/taleshop";
	}
	
	@GetMapping(value = "/detail")
	public void detail() {
	}
	
	@PostMapping(value="/getList")
	@ResponseBody
	public List<FairytaleDTO> getList(int board_type, Criteria crt, Model model){
		model.addAttribute("list", service.getList(crt));
		model.addAttribute("pdto",new PageDTO(crt, service.total(crt)));
		return null;
	}
}
