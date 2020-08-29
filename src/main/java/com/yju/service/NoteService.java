package com.yju.service;

import java.util.List;

import com.yju.domain.Criteria;
import com.yju.domain.NoteDTO;

public interface NoteService {
	public List<NoteDTO> getList(Criteria crt);
	public boolean send(NoteDTO dto);
	public NoteDTO get(int seq);
	public int total(Criteria crt);
}
