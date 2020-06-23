package com.yju.fairytopia;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yju.domain.MemberVO;
import com.yju.domain.WorkplaceVO;
import com.yju.service.StudioService;

@Controller
@RequestMapping("/author")
public class AuthorController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private StudioService service;

	@GetMapping("/studio")
	public String studio(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("user") == null
				|| ((MemberVO) request.getSession().getAttribute("user")).getMem_aut() == 0) {
			return "/main";
		} else {
			List<WorkplaceVO> list = service.getList((MemberVO) request.getSession().getAttribute("user"));
			log.info(list.toString());
			model.addAttribute("wplist", list);
			return "/author/studio";
		}
	}

	@PostMapping("/createwp")
	public void createWP(WorkplaceVO vo) {
		service.createWorkplace(vo);
		service.addAuthor(vo);
//		return "redirect:/";
	}
}
