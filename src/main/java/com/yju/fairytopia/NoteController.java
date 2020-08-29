package com.yju.fairytopia;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;
import com.yju.domain.NoteDTO;
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
	public JsonObject send(NoteDTO dto, @RequestParam("to") String reciever, @RequestParam("from") String sender) {
		JsonObject json = new JsonObject();
		dto.setReciever(reciever);
		dto.setSender(sender);
		try {
			service.send(dto);
			json.addProperty("responseCode", "success");
		} catch (Exception e) {
			json.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		return json;
	}
}
