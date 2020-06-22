package com.yju.fairytopia;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yju.domain.WorkplaceVO;
import com.yju.service.StudioService;

@Controller
@RequestMapping("/author")
public class AuthorController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	
   @Autowired 
   private StudioService service;
	 	
	@GetMapping("/studio")
	public void studio() {
	}
	
	@PostMapping("/createwp")
	public String createWP(WorkplaceVO vo) {
		log.info(""+vo);
		service.createWorkplace(vo);
		log.info(""+vo);
		service.addAuthor(vo);
		log.info("done");
		return "redirect:/";
	}
}
