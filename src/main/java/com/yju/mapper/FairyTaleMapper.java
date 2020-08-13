package com.yju.mapper;

import java.util.ArrayList;

import com.yju.domain.BuyinglistVO;
import com.yju.domain.FairyTaleVO;
import com.yju.domain.MemberVO;

public interface FairyTaleMapper {
	public ArrayList<FairyTaleVO> select(MemberVO vo);
	
	public ArrayList<FairyTaleVO> fairytale();
	
	public void buyinsert(BuyinglistVO vo);
	
	public ArrayList<FairyTaleVO> recommendlist();
}
