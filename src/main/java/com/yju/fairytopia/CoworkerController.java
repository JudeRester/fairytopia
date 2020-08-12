package com.yju.fairytopia;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.yju.domain.Criteria;
import com.yju.service.CoworkerService;

@Controller
@RequestMapping("/coworker")
public class CoworkerController {
	private static final Logger log = LoggerFactory.getLogger(CoworkerController.class);
	
	@Autowired
	private CoworkerService service;
	
	/*
	 * @GetMapping("/list") public void coworker(Criteria crt, Model model) {
	 * 
	 * }
	 */
	@GetMapping("/")
	public String coworker(Criteria crt, Model model) {
		log.info("coworker");
		model.addAttribute("list",service.getList(crt));
		return "/author/coworker";
	}
	@GetMapping("list")
	public String coworker(int board_type, Criteria crt, Model model) {
		crt.setBoard_type(board_type);
		model.addAttribute("list",service.getList(crt));
		return "/author/coworker";
	}
	
	
	@GetMapping("write")
	public String write() {
		return "/author/write";
	}
	
	@PostMapping(value="summernoteImageUpload", produces = "application/json")
	@ResponseBody
	public JsonObject summernoteImage(@RequestParam("file") MultipartFile multipartFile) {
		JsonObject json = new JsonObject();
		String path = "d:\\fairy\\workplace\\"+UUID.randomUUID();
		
		return json;
	}
	private String saveFile(MultipartFile file, String filename, String UPLOAD_PATH) {
		// 파일 이름 변경
		String saveName = filename;
		log.info(file.getOriginalFilename());
		log.info("saveName: {}", saveName);

		// 저장할 File 객체를 생성(껍데기 파일)ㄴ
		File saveFile = new File(UPLOAD_PATH, saveName); // 저장할 폴더 이름, 저장할 파일 이름

		try {
			file.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return saveName;
	} // end saveFile(
}
