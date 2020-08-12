package com.yju.mapper;

import java.util.List;

import com.yju.domain.MemberVO;
import com.yju.domain.WorkplaceVO;

public interface StudioMapper {
	
	public void createWorkplace(WorkplaceVO vo);
	
	public void addAuthor(WorkplaceVO vo);
	
	public List<WorkplaceVO> getList(MemberVO vo);
	
	public void addThumbnail(WorkplaceVO vo);
}
