package com.yju.mapper;

import java.util.List;

import com.yju.domain.MemberDTO;
import com.yju.domain.WorkplaceDTO;

public interface StudioMapper {
	
	public void createWorkplace(WorkplaceDTO dto);
	
	public void addAuthor(WorkplaceDTO dto);
	
	public List<WorkplaceDTO> getList(MemberDTO dto);
	
	public void addThumbnail(WorkplaceDTO dto);
}
