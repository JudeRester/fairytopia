package com.yju.mapper;

import com.yju.domain.MemberDTO;

public interface MemberMapper {
	public int checkId(String mem_id);
	
	public void join(MemberDTO dto);

	public MemberDTO login(MemberDTO dto);
	
	public MemberDTO profile(String mem_id);
}
