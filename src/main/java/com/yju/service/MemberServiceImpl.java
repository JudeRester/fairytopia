package com.yju.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.MemberVO;
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
	public void join(MemberVO vo) {
		log.info("service.....join....");
		mapper.join(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) {
		log.info("service.....login....");
		return mapper.login(vo);
	}
}
