package com.yju.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.MemberDTO;
import com.yju.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	public static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired
	private MemberMapper mapper;

	@Override
	public int checkId(String mem_id) {
		log.info("service....checkID....");
		return mapper.checkId(mem_id);
	}

	@Override
	public void join(MemberDTO dto) {
		log.info("service.....join....");
		mapper.join(dto);
	}

	@Override
	public MemberDTO login(MemberDTO dto) {
		log.info("service.....login....");
		return mapper.login(dto);
	}

	@Override
	public MemberDTO profile(String mem_id) {
		return mapper.profile(mem_id);
	}

	@Override
	public void uploadPhoto() {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void update(MemberDTO vo) {
		log.info("service....update...");
		mapper.update(vo);
	}
}
