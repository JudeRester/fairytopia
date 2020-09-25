package com.yju.service;

import com.yju.domain.MemberDTO;

public interface MemberService {
	public int checkId(String mem_id);

	public void join(MemberDTO dto);

	public void update(MemberDTO dto);

	public MemberDTO login(MemberDTO dto);
	
//	public MemberDTO android_login(MemberDTO dto);
	
	public void uploadPhoto();

	public MemberDTO profile(String mem_id);

}
