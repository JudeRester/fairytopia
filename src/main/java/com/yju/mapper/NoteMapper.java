package com.yju.mapper;

import java.util.List;

import com.yju.domain.MemberDTO;
import com.yju.domain.TalkContentDTO;
import com.yju.domain.TalkRoomDTO;

public interface NoteMapper {

	public boolean send(TalkContentDTO dto);

	public List<TalkRoomDTO> getList(MemberDTO mdto);

	public String getSnippet(TalkRoomDTO tdto);

	public String checkRoom(TalkContentDTO dto);

	public void makeRoom(TalkContentDTO dto);

	public List<TalkContentDTO> get(String talk_id);

}
