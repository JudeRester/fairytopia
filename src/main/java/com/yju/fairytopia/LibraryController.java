package com.yju.fairytopia;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yju.domain.MemberDTO;
import com.yju.domain.WorkplaceDTO;

@Controller
@RequestMapping("/library")
public class LibraryController {
	private static final Logger log = LoggerFactory.getLogger(LibraryController.class);

//	@Autowired
//	private StudioService service;

	@GetMapping("/mybook")
	public String studio(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("user") == null) {
			return "redirect:/";
		} else {
//			List<WorkplaceVO> list = service.getList((MemberVO) request.getSession().getAttribute("user"));
//			log.info(list.toString());
//			model.addAttribute("wplist", list);
			return "/library/mybook";
		}
	}

	@PostMapping("/createwp")
	public void createWP(WorkplaceDTO dto) {
//		service.createWorkplace(vo);
//		service.addAuthor(vo);
//		return "redirect:/";
	}
}
