package com.yju.fairytopia;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;
import com.yju.domain.MemberDTO;
import com.yju.domain.TalkContentDTO;
import com.yju.domain.TalkRoomDTO;
import com.yju.service.NoteService;

@Controller
@RequestMapping("/note")
public class NoteController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	
	@Autowired
	private NoteService service;
	
	@GetMapping(value = "")
	public void note() {
	}
	
	@PostMapping(value="/sendNote", produces="application/json")
	@ResponseBody
	public JsonObject send(TalkContentDTO dto, @RequestParam("to") String reciever, @RequestParam("from") String sender) {
		JsonObject json = new JsonObject();
		dto.setMem_receive(reciever);
		dto.setMem_send(sender);
		
		dto.setTalk_id(service.checkRoom(dto));
		System.out.println(dto.getTalk_id());
		if(dto.getTalk_id()==null) {
			service.makeRoom(dto);
		}
		try {
			service.send(dto);
			json.addProperty("responseCode", "success");
		} catch (Exception e) {
			json.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		return json;
	}
	
	@GetMapping(value="/notelist")
	public String notelist(Model model, HttpServletRequest request) {
		logger.info("notelist");
		HttpSession session = request.getSession();
		MemberDTO mdto = (MemberDTO)session.getAttribute("user");
		System.out.println(mdto.getMem_id());
		List<TalkRoomDTO> tdto = service.getList(mdto);
		System.out.println(tdto.size());
		for(TalkRoomDTO i :tdto) {
			i.setSnippet(service.getSnippet(i));
		}
		logger.info(tdto.toString());
		model.addAttribute("talkroom", tdto);
		return "/author/notelist";
	}
	
	@ResponseBody
	@PostMapping(value="/get")
	public List<TalkContentDTO> get(String thread){
		logger.info("talk_id="+thread);
		return service.get(thread);
	}
	
}
