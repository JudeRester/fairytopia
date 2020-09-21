package com.yju.mapper;

import java.util.List;
import java.util.Map;

import com.yju.domain.FairytaleContentDTO;
import com.yju.domain.FairytaleDTO;
import com.yju.domain.MemberDTO;
import com.yju.domain.WorkplaceDTO;
import com.yju.domain.WorkplaceFileDTO;

public interface StudioMapper {
	
	public void createWorkplace(WorkplaceDTO dto);
	
	public void addAuthor(WorkplaceDTO dto);
	
	public List<WorkplaceDTO> getList(MemberDTO dto);
	
	public void addThumbnail(WorkplaceDTO dto);

	public List<MemberDTO> getMembers(String workplace_id);

	public List<MemberDTO> getInvite(WorkplaceDTO dto);

	public void sendInvite(Map<String, String> invitation);

	public List<WorkplaceFileDTO> getPages(String workplace_id);

	public List<WorkplaceFileDTO> getFiles(WorkplaceFileDTO dto);

	public void uploadFile(WorkplaceFileDTO dto);

	public FairytaleDTO getInfo(String workplace_id);

	public void insertInfo(FairytaleDTO dto);

	public void updateInfo(FairytaleDTO dto);

	public List<FairytaleContentDTO> getWorkingPages(String workplace_id);

	public void addPage(FairytaleContentDTO dto);
}
