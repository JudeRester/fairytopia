package com.yju.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.FairytaleContentDTO;
import com.yju.domain.FairytaleDTO;
import com.yju.domain.MemberDTO;
import com.yju.domain.WorkplaceDTO;
import com.yju.domain.WorkplaceFileDTO;
import com.yju.mapper.StudioMapper;

@Service
public class StudioServiceImpl implements StudioService {
public static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired
	private StudioMapper mapper;
	
	@Override
	public void createWorkplace(WorkplaceDTO dto) {
		log.info("Workplace service ... createWorkplace");
		mapper.createWorkplace(dto);
	}

	@Override
	public void addAuthor(WorkplaceDTO dto) {
		log.info("Workplace service ... addAuthor");
		mapper.addAuthor(dto);
	}

	@Override
	public List<WorkplaceDTO> getList(MemberDTO dto) {
		return mapper.getList(dto);
		}
	@Override
	public void addThumbnail(WorkplaceDTO dto) {
		mapper.addThumbnail(dto);
	}

	@Override
	public List<MemberDTO> getMembers(String workplace_id) {
		return mapper.getMembers(workplace_id);
	}

	@Override
	public List<MemberDTO> getInvite(WorkplaceDTO dto) {
		return mapper.getInvite(dto);
	}

	@Override
	public void sendInvite(Map<String,String> invitation) {
		mapper.sendInvite(invitation);
	}

	@Override
	public List<WorkplaceFileDTO> getPages(String workplace_id) {
		return mapper.getPages(workplace_id);
	}

	@Override
	public List<WorkplaceFileDTO> getFiles(WorkplaceFileDTO dto) {
		return mapper.getFiles(dto);
	}

	@Override
	public void uploadFile(WorkplaceFileDTO dto) {
		mapper.uploadFile(dto);
	}

	@Override
	public FairytaleDTO getInfo(String workplace_id) {
		return mapper.getInfo(workplace_id);
	}

	@Override
	public void insertInfo(FairytaleDTO dto) {
		mapper.insertInfo(dto);
	}

	@Override
	public void updateInfo(FairytaleDTO dto) {
		mapper.updateInfo(dto);
	}

	@Override
	public List<FairytaleContentDTO> getWorkingPages(String workplace_id) {
		return mapper.getWorkingPages(workplace_id);
	}

	@Override
	public void newPage(FairytaleContentDTO dto) {
		mapper.addPage(dto);
	}

}
