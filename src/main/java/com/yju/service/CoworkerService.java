package com.yju.service;

import java.util.List;

import com.yju.domain.CoworkerVO;
import com.yju.domain.Criteria;

public interface CoworkerService {
	public List<CoworkerVO> getList(Criteria crt);
	
	public void write(CoworkerVO vo);

	public CoworkerVO get(int seq);
}
