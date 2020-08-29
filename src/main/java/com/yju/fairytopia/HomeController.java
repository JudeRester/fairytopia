package com.yju.fairytopia;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@GetMapping(value = "/")
	public String home() {
		return "main";
	}

}
