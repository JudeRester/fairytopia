package com.yju.service;

import com.yju.domain.MemberVO;

public interface MemberService {
	public int checkId(String mem_id);

	public void join(MemberVO vo);

	public MemberVO login(MemberVO vo);
}
