package com.yju.fairytopia;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
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
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.yju.domain.FairytaleContentDTO;
import com.yju.domain.FairytaleDTO;
import com.yju.domain.MemberDTO;
import com.yju.domain.ScheduleDTO;
import com.yju.domain.WorkplaceDTO;
import com.yju.domain.WorkplaceFileDTO;
import com.yju.service.StudioService;

@Controller
@RequestMapping("/author")
public class AuthorController {
	private static final Logger log = LoggerFactory.getLogger(AuthorController.class);

	@Autowired
	private StudioService service;

	@GetMapping("/studio")
	public String studio(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("user") == null
				|| ((MemberDTO) request.getSession().getAttribute("user")).getMem_aut() == 0) {
			return "redirect:/";
		} else {
			List<WorkplaceDTO> list = service.getList((MemberDTO) request.getSession().getAttribute("user"));
//			log.info(list.toString());
			for (WorkplaceDTO i : list) {
				i.setMembers(service.getMembers(i.getWorkplace_id()));
				System.out.println(i.getMembers().size());
			}
			model.addAttribute("wplist", list);
			return "/author/studio";
		}
	}

	@PostMapping("/createwp")
	public String createWP(WorkplaceDTO dto, @RequestParam("upload_thumbnail") MultipartFile file) {
		log.info("createWP : " + dto);
		String path;
		String[] token;
		service.createWorkplace(dto);
		System.out.println("workplace created");
		path = "d:\\fairy\\workplace\\" + dto.getWorkplace_id();
		File Folder = new File(path);
		String name = "0." + FilenameUtils.getExtension(file.getOriginalFilename());

		// 해당 디렉토리가 없을경우 디렉토리를 생성
//		return "redirect:/";

		if (!Folder.exists()) {
			try {
				Folder.mkdir(); // 폴더 생성합니다.
				System.out.println("폴더가 생성되었습니다.");

			} catch (Exception e) {
				e.getStackTrace();
			}
		} else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}
		saveFile(file, name, path);
		dto.setWorkplace_thumbnail(name);
		service.addThumbnail(dto);
		service.addAuthor(dto);

		return "redirect:/author/studio";
	}

	@GetMapping("/workroom")
	public void workroom(Model model, String workplace_id) {
		model.addAttribute("members", service.getMembers(workplace_id));
	}

	@PostMapping("/getInvite")
	@ResponseBody
	public List<MemberDTO> getInvite(String workplace_id, HttpServletRequest request) {
		HttpSession session = request.getSession();
		WorkplaceDTO dto = new WorkplaceDTO();
		dto.setMem_id(((MemberDTO) session.getAttribute("user")).getMem_id());
		dto.setWorkplace_id(workplace_id);
		List<MemberDTO> list = service.getInvite(dto);
		return list;
	}

	@PostMapping("/sendInvite")
	@ResponseBody
	public void sendInvite(@RequestBody List<Map<String, String>> list, HttpServletRequest request) {
		HttpSession session = request.getSession();
		for (Map<String, String> i : list) {
			Map<String, String> invitation = new HashMap<>();
			invitation.put("workplace_id", i.get("workplace_id"));
			invitation.put("mem_send", ((MemberDTO) session.getAttribute("user")).getMem_id());
			invitation.put("mem_receive", i.get("mem_receive"));
			service.sendInvite(invitation);
		}
	}

	@PostMapping("/getPage")
	@ResponseBody
	public Map<Integer, List<WorkplaceFileDTO>> getPage(String workplace_id) {
		log.info("getPage workplace_id : " + workplace_id);
		List<WorkplaceFileDTO> pagenum = service.getPages(workplace_id);
		Map<Integer, List<WorkplaceFileDTO>> list = new HashMap<>();
		for (WorkplaceFileDTO i : pagenum) {
			list.put(i.getFile_page(), service.getFiles(i));
		}
		return list;
	}

	@PostMapping("/loadSchedule")
	@ResponseBody
	public List<ScheduleDTO> loadSchedule(String workplace_id) {
		log.info("loadSchedule workplace_id : " + workplace_id);
		return service.loadSchedule(workplace_id);
	}

	@PostMapping("/addSchedule")
	@ResponseBody
	public void addSchedule(@RequestBody String json) {
		log.info("addSchedule");
		Gson gson = new GsonBuilder().setDateFormat("yyyy.MM.dd.").create();
		ScheduleDTO serialized_Json = gson.fromJson(json, ScheduleDTO.class);

		service.addSchedule(serialized_Json);
	}

	@PostMapping("/fileupload")
	@ResponseBody
	public void photoUpload(@RequestParam("file") MultipartFile multipartfile,
			@RequestParam("workplace_id") String workplace_id, @RequestParam("file_page") int file_page) {

		String prefixPath = "d:\\fairy\\workplace\\" + workplace_id + "\\" + file_page;
		String fileName = multipartfile.getOriginalFilename();
		File file = new File(prefixPath, fileName);
		System.out.println(fileName);
		File Folder = new File(prefixPath);
		WorkplaceFileDTO dto = new WorkplaceFileDTO();
		dto.setFile_name(fileName);
		dto.setWorkplace_id(workplace_id);
		dto.setFile_page(file_page);
		// 해당 디렉토리가 없을경우 디렉토리를 생성
		if (!Folder.exists()) {
			try {
				Folder.mkdir(); // 폴더 생성합니다.
				System.out.println("폴더가 생성되었습니다.");

			} catch (Exception e) {
				e.getStackTrace();
			}
		} else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}

		try {
			InputStream fileStream = multipartfile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, file);
			log.info("upload complete");

			service.uploadFile(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@GetMapping("/editContents")
	public void editContents() {
		log.info("editContents");
		/*
		 * File f = new File("/fairy/workplace/"); try { EpubReader epubReader = new
		 * EpubReader(); if (f.exists()) {
		 * 
		 * } else {
		 * 
		 * } } catch (Exception e) { e.printStackTrace(); }
		 */

	}

	@PostMapping("/getInfo")
	@ResponseBody
	public FairytaleDTO getInfo(String workplace_id) {
		log.info(workplace_id);
		FairytaleDTO dto = service.getInfo(workplace_id);
		List<FairytaleDTO> tags = service.getTags(workplace_id);
		for(FairytaleDTO i : tags) {
			if(dto.getFai_tag_name()==null) dto.setFai_tag_name("#"+i.getFai_tag_name());
			else dto.setFai_tag_name(dto.getFai_tag_name()+" #"+i.getFai_tag_name());	
		}
		System.out.println(dto.getFai_tag_name());
		return dto;
	}

	@PostMapping("/updateInfo")
	@ResponseBody
	public void updateInfo(FairytaleDTO dto) {
		if (service.getInfo(dto.getWorkplace_id()) == null) {
			log.info("1:" + dto.toString());
			service.insertInfo(dto);
		} else {
			log.info("2:" + dto.toString());
			service.updateInfo(dto);
		}
		Map<String, Object> data = new HashMap<>();
		StringTokenizer tags = new StringTokenizer(dto.getFai_tag_name().replaceAll("[\\s.,]", ""), "#");
		if (dto.getFai_tag_name() != "") {
			System.out.println(dto.getFai_tag_name());
			List<String> tag = new ArrayList<>();
			while (tags.hasMoreElements()) {
				tag.add(tags.nextToken());
			}
			data.put("workplace_id", dto.getWorkplace_id());
			data.put("tag", tag);
			System.out.println(tag);
			service.addTag(data);
			
		}

	}

	@PostMapping("/getWorkingPages")
	@ResponseBody
	public List<FairytaleContentDTO> getWorkingPages(String workplace_id) {
		log.info("getWorkingPages workplace_id : " + workplace_id);
		List<FairytaleContentDTO> list = service.getWorkingPages(workplace_id);
		return list;
	}

	@PostMapping("/newPage")
	@ResponseBody
	public void newPage(@RequestParam("workplace_id") String workplace_id, @RequestParam("pageNum") int file_page) {

		String prefixPath = "d:\\fairy\\workplace\\" + workplace_id + "\\workfiles\\" + file_page;
		String fileName = "";
		System.out.println(fileName);
		File Folder = new File(prefixPath);
		FairytaleContentDTO dto = new FairytaleContentDTO();
		dto.setWorkplace_id(workplace_id);
		dto.setFai_cont_page(file_page);
		// 해당 디렉토리가 없을경우 디렉토리를 생성
		if (!Folder.exists()) {
			try {
				Folder.mkdirs(); // 폴더 생성합니다.
				System.out.println("폴더가 생성되었습니다.");

			} catch (Exception e) {
				e.getStackTrace();
			}
		} else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}

		service.newPage(dto);
	}

	@PostMapping("/save")
	@ResponseBody
	public JsonObject save(@RequestBody String json) {
		JsonObject result = new JsonObject();
		try {
			Map serialized_Json = new Gson().fromJson(json, Map.class);
			System.out.println(serialized_Json.toString());
			String workplace_id = (String) serialized_Json.get("workplace_id");
			String file_page = (String) serialized_Json.get("file_page");
			String cont = (String) serialized_Json.get("cont");

			String prefixPath = "d:\\fairy\\workplace\\" + workplace_id + "\\workfiles\\" + file_page;
			String fileName = file_page + ".html";
			File Folder = new File(prefixPath);
			if (!Folder.exists()) {
				try {
					Folder.mkdirs(); // 폴더 생성합니다.
					System.out.println("폴더가 생성되었습니다.");

				} catch (Exception e) {
					e.getStackTrace();
				}
			}

			File file = new File(prefixPath, fileName);
			if (!file.exists())
				cont = "<meta charset=\"UTF-8\">" + cont;
			BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(file));
			bs.write(cont.getBytes());
			bs.close();
			result.addProperty("responseCode", "success");
		} catch (Exception e) {
			result.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		return result;
	}

	@PostMapping("/load")
	@ResponseBody
	public JsonObject load(@RequestBody String json) {
		Map serialized_Json = new Gson().fromJson(json, Map.class);
		String workplace_id = (String) serialized_Json.get("workplace_id");
		String file_page = (String) serialized_Json.get("file_page");
		JsonObject result = new JsonObject();

		String prefixPath = "d:\\fairy\\workplace\\" + workplace_id + "\\workfiles\\" + file_page;
		String fileName = file_page + ".html";
		File file = new File(prefixPath, fileName);

		try {
			BufferedInputStream is = new BufferedInputStream(new FileInputStream(file));
			String cont = new String(IOUtils.toByteArray(is), "UTF-8");
			result.addProperty("cont", cont);
			result.addProperty("responseCode", "success");
		} catch (FileNotFoundException e) {
			result.addProperty("cont", "");
			result.addProperty("responseCode", "success");
		} catch (Exception e) {
			result.addProperty("responseCode", "error");
			e.printStackTrace();
		}

		return result;
	}

	@PostMapping(value = "/coverUpload")
	@ResponseBody
	public JsonObject coverUpload(@RequestParam("file") MultipartFile multipartFile,
			@RequestParam("workplace_id") String workplace_id) {
		JsonObject json = new JsonObject();
		String prefixPath = "d:\\fairy\\workplace\\" + workplace_id + "\\workfiles\\";
		String fileName = "" + UUID.randomUUID();
		String extension = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
		File file = new File(prefixPath, fileName + "." + extension);
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, file); // 파일 저장
			json.addProperty("url", "/fairy/workplace/" + workplace_id + "/workfiles/" + fileName + "." + extension);
			Map<String, String> tmp = new HashMap<>();
			tmp.put("workplace_id", workplace_id);
			tmp.put("url", "/fairy/workplace/" + workplace_id + "/workfiles/" + fileName + "." + extension);
			service.coverUpload(tmp);

			json.addProperty("responseCode", "success");
			log.info("upload complete");
		} catch (Exception e) {
			FileUtils.deleteQuietly(file); // 저장된 파일 삭제
			json.addProperty("responseCode", "error");
			e.printStackTrace();
		}

		return json;
	}

	@PostMapping(value = "/summernoteImageUpload", produces = "application/json")
	@ResponseBody
	public JsonObject summernoteImage(@RequestParam("file") MultipartFile multipartFile,
			@RequestParam("workplace_id") String workplace_id, @RequestParam("file_page") String file_page) {
		log.info("uploading image");
		JsonObject json = new JsonObject();
		String prefixPath = "d:\\fairy\\workplace\\" + workplace_id + "\\workfiles\\" + file_page;
//		String fileName = multipartFile.getOriginalFilename();
		String fileName = "" + UUID.randomUUID();
		String extension = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
		File file = new File(prefixPath, fileName + "." + extension);

		try {
//			multipartFile.transferTo(file);
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, file); // 파일 저장
			json.addProperty("url",
					"/fairy/workplace/" + workplace_id + "/workfiles/" + file_page + "/" + fileName + "." + extension);
			json.addProperty("responseCode", "success");
			log.info("upload complete");
		} catch (Exception e) {
			FileUtils.deleteQuietly(file); // 저장된 파일 삭제
			json.addProperty("responseCode", "error");
			e.printStackTrace();
		}

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
