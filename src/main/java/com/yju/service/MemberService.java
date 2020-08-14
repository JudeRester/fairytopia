package com.yju.service;

import org.springframework.ui.Model;

import com.yju.domain.MemberVO;

public interface MemberService {
	public int checkId(String mem_id);

	public void join(MemberVO vo);

	public MemberVO login(MemberVO vo);
	
	public void uploadPhoto();

	public MemberVO profile(String mem_id);
}
