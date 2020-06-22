package com.yju.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.WorkplaceVO;
import com.yju.mapper.StudioMapper;

@Service
public class StudioServiceImpl implements StudioService {
public static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired
	private StudioMapper mapper;
	
	@Override
	public void createWorkplace(WorkplaceVO vo) {
		log.info("Workplace service ... createWorkplace");
		mapper.createWorkplace(vo);
	}

	@Override
	public void addAuthor(WorkplaceVO vo) {
		log.info("Workplace service ... addAuthor");
	}

}
