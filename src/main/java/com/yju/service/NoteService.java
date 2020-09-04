package com.yju.service;

import java.util.List;

import com.yju.domain.Criteria;
import com.yju.domain.MemberDTO;
import com.yju.domain.NoteDTO;
import com.yju.domain.TalkContentDTO;
import com.yju.domain.TalkRoomDTO;

public interface NoteService {
	public List<TalkRoomDTO> getList(MemberDTO mdto);
	public boolean send(TalkContentDTO dto);
	public NoteDTO get(int seq);
	public int total(Criteria crt);
	public String getSnippet(TalkRoomDTO tdto);
	public String checkRoom(TalkContentDTO dto);
	public void makeRoom(TalkContentDTO dto);
}
