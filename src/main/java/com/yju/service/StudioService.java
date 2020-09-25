package com.yju.service;

import java.util.List;

import com.yju.domain.MemberVO;
import com.yju.domain.WorkplaceVO;

public interface StudioService {
	public void createWorkplace(WorkplaceVO vo);
	
	public void addAuthor(WorkplaceVO vo);
	
	public List<WorkplaceVO> getList(MemberVO vo);
<<<<<<< HEAD
=======
	
	public void addThumbnail(WorkplaceVO vo);
>>>>>>> master
}
