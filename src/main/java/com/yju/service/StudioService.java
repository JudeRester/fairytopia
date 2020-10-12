package com.yju.service;

import java.util.List;
import java.util.Map;

import com.google.gson.JsonObject;
import com.yju.domain.FairytaleContentDTO;
import com.yju.domain.FairytaleDTO;
import com.yju.domain.MemberDTO;
import com.yju.domain.ScheduleDTO;
import com.yju.domain.WorkplaceDTO;
import com.yju.domain.WorkplaceFileDTO;
import com.yju.domain.WorkplacePersonDTO;

public interface StudioService {
	public void createWorkplace(WorkplaceDTO dto);
	
	public void addAuthor(WorkplaceDTO dto);

	public List<WorkplaceDTO> getList(MemberDTO dto);
	
	public void addThumbnail(WorkplaceDTO dto);

	public List<MemberDTO> getMembers(String workplace_id);

	public List<MemberDTO> getInvite(WorkplaceDTO dto);

	public void sendInvite(Map<String,String> invitation);
	
	public List<WorkplaceFileDTO> getPages(String workplace_id);
	
	public List<WorkplaceFileDTO> getFiles(WorkplaceFileDTO dto);

	public void uploadFile(WorkplaceFileDTO dto);

	public FairytaleDTO getInfo(String workplace_id);

	public void insertInfo(FairytaleDTO dto);

	public void updateInfo(FairytaleDTO dto);

	public List<FairytaleContentDTO> getWorkingPages(String workplace_id);

	public void newPage(FairytaleContentDTO dto);

	public List<ScheduleDTO> loadSchedule(String workplace_id);

	public void addSchedule(ScheduleDTO serialized_Json);

	public void coverUpload(Map<String, String> tmp);

	public void addTag(Map<String, Object> data);

	public List<FairytaleDTO> getTags(String workplace_id);

	public List<WorkplacePersonDTO> getAuthors(String workplace_id);

	public void publish(String workplace_id);
}
