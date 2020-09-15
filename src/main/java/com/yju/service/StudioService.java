package com.yju.service;

import java.util.List;
import java.util.Map;

import com.yju.domain.MemberDTO;
import com.yju.domain.WorkplaceDTO;
import com.yju.domain.WorkplaceFileDTO;

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
}
