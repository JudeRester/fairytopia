package com.yju.service;

import java.util.ArrayList;

import com.yju.domain.BuyinglistVO;
import com.yju.domain.FairyTagVO;
import com.yju.domain.FairyTaleVO;
import com.yju.domain.MemberDTO;

public interface FairyTaleService {
	public ArrayList<FairyTaleVO> select(MemberDTO vo);
	
	public ArrayList<FairyTaleVO> fairytale();
	
	public ArrayList<FairyTaleVO> recommendlist();
	
	public void buyinsert(BuyinglistVO vo);
	
	public int maxcount();
	
	public String gettag(int i);
	
	public ArrayList<FairyTaleVO> tagrecommend(String tag);
	
	public long grade(String name);
	
	public void updatecount(FairyTaleVO vo);
	
	public ArrayList<FairyTaleVO> search(String name);
	
	public String book(String name);
}
