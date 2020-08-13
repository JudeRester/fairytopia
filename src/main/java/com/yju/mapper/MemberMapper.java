package com.yju.mapper;

import com.yju.domain.MemberVO;

public interface MemberMapper {
	public int checkId(String mem_id);
	
	public void join(MemberVO vo);

	public MemberVO login(MemberVO vo);

	public void update(MemberVO vo);
}
