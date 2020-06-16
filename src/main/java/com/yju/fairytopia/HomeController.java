package com.yju.fairytopia;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
	@GetMapping(value="/")
	public String home() {
		return "main";
	}
	/*
	 * @GetMapping(value="/main") public String main() { logger.info("main"); return
	 * "main"; }
	 */
	
	
}
