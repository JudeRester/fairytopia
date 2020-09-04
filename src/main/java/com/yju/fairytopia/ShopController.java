package com.yju.fairytopia;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yju.service.NoteService;

@Controller
@RequestMapping("/shop")
public class ShopController {
private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	//@Autowired
	//private NoteService service;
	
	@GetMapping(value = "")
	public String taleshop() {
		return "/shop/taleshop";
	}
	
	@GetMapping(value = "/detail")
	public void detail() {
	}
}
