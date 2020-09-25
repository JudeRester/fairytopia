package com.yju.service;

import java.util.List;

import com.yju.domain.CoworkerDTO;
import com.yju.domain.Criteria;

public interface CoworkerService {
	public List<CoworkerDTO> getList(Criteria crt);
	
	public void write(CoworkerDTO dto);

	public CoworkerDTO get(int seq);

	public int total(Criteria crt);
}
