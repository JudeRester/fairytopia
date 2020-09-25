package com.yju.mapper;

import java.util.ArrayList;

import com.yju.domain.BuyinglistVO;
import com.yju.domain.FairyTagVO;
import com.yju.domain.FairyTaleVO;
import com.yju.domain.MemberVO;

public interface FairyTaleMapper {
	public ArrayList<FairyTaleVO> select(MemberDTO dto);
	
	public ArrayList<FairyTaleVO> fairytale();
	
	public void buyinsert(BuyinglistVO vo);
	
	public ArrayList<FairyTaleVO> recommendlist();
	
	public int maxcount();
	
	public String gettag(int i);
	
	public ArrayList<FairyTaleVO> tagrecommend(String tag);
	
	public long grade(String name);
	
	public void updatecount(FairyTaleVO vo);
	
	public ArrayList<FairyTaleVO> search(String name);
	
	public String book(String name);
}
