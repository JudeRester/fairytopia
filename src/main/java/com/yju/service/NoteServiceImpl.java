package com.yju.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.Criteria;
import com.yju.domain.NoteDTO;
import com.yju.mapper.NoteMapper;

@Service
public class NoteServiceImpl implements NoteService {
	
	@Autowired private NoteMapper mapper;

	@Override
	public List<NoteDTO> getList(Criteria crt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean send(NoteDTO dto) {
		return mapper.send(dto);
	}

	@Override
	public NoteDTO get(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int total(Criteria crt) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
