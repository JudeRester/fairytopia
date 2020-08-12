package com.yju.fairytopia;

import java.io.File;
import java.io.InputStream;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
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
	@GetMapping("")
	public String coworker1(Criteria crt, Model model) {
		log.info("coworker");
		model.addAttribute("list", service.getList(crt));
		return "/author/coworker";
	}
	
	@GetMapping("/")
	public String coworker(Criteria crt, Model model) {
		log.info("coworker");
		model.addAttribute("list", service.getList(crt));
		return "/author/coworker";
	}

	@GetMapping("/list")
	public String coworker(int board_type, Criteria crt, Model model) {
		crt.setBoard_type(board_type);
		model.addAttribute("list", service.getList(crt));
		return "/author/coworker";
	}

	@GetMapping("/write")
	public String write() {
		return "/author/write";
	}

	@PostMapping(value = "/summernoteImageUpload", produces = "application/json")
	@ResponseBody
	public JsonObject summernoteImage(@RequestParam("file") MultipartFile multipartFile,
			@RequestParam("path") String path) {
		log.info("uploading image");
		JsonObject json = new JsonObject();
		String prefixPath = "d:\\fairy\\workplace\\coworkers\\";
		if (path.equals("1")) {
			path = "" + UUID.randomUUID(); // 기존에 만들어진 폴더가 없으면 폴더명을 새로 생성
		}
//		String fileName = multipartFile.getOriginalFilename();
		String fileName = "" + UUID.randomUUID();
		String extension = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
		File file = new File(prefixPath + path, fileName+"."+extension);

		try {
//			multipartFile.transferTo(file);
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, file); // 파일 저장
			json.addProperty("url", "/fairy/workplace/coworkers/" + path + "/" + fileName+"."+extension);
			json.addProperty("path", path);
			json.addProperty("responseCode", "success");
			log.info("upload complete");
		} catch (Exception e) {
			FileUtils.deleteQuietly(file); // 저장된 파일 삭제
			json.addProperty("responseCode", "error");
			e.printStackTrace();
		}

		return json;
	}
	/*
	 * private String saveFile(MultipartFile file, String filename, String
	 * UPLOAD_PATH) { // 파일 이름 변경 String saveName = filename;
	 * log.info(file.getOriginalFilename()); log.info("saveName: {}", saveName);
	 * 
	 * // 저장할 File 객체를 생성(껍데기 파일)ㄴ File saveFile = new File(UPLOAD_PATH, saveName);
	 * // 저장할 폴더 이름, 저장할 파일 이름
	 * 
	 * try { file.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘 } catch
	 * (IOException e) { e.printStackTrace(); return null; }
	 * 
	 * return saveName; } // end saveFile(
	 */
}
