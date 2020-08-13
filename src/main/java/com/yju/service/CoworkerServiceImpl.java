package com.yju.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.CoworkerVO;
import com.yju.domain.Criteria;
import com.yju.mapper.CoworkerMapper;

@Service
public class CoworkerServiceImpl implements CoworkerService {

public static final Logger log = LoggerFactory.getLogger(CoworkerService.class);
	
	@Autowired
	private CoworkerMapper mapper;
	
	@Override
	public List<CoworkerVO> getList(Criteria crt) {
		return mapper.getList(crt);
	}

	@Override
	public void write(CoworkerVO vo) {
		mapper.write(vo);
	}

	@Override
	public CoworkerVO get(int seq) {
		return mapper.get(seq);
	}

}
