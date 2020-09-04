package com.yju.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.Criteria;
import com.yju.domain.MemberDTO;
import com.yju.domain.NoteDTO;
import com.yju.domain.TalkContentDTO;
import com.yju.domain.TalkRoomDTO;
import com.yju.mapper.NoteMapper;

@Service
public class NoteServiceImpl implements NoteService {
	
	@Autowired private NoteMapper mapper;

	@Override
	public List<TalkRoomDTO> getList(MemberDTO mdto) {
		return mapper.getList(mdto);
	}

	@Override
	public boolean send(TalkContentDTO dto) {
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

	@Override
	public String getSnippet(TalkRoomDTO tdto) {
		return mapper.getSnippet(tdto);
	}

	@Override
	public String checkRoom(TalkContentDTO dto) {
		return mapper.checkRoom(dto);
	}

	@Override
	public void makeRoom(TalkContentDTO dto) {
		mapper.makeRoom(dto);
	}
	
}
