package com.yju.service;

import java.util.ArrayList;

import com.yju.domain.BuyinglistVO;
import com.yju.domain.FairyTaleVO;
import com.yju.domain.MemberVO;

public interface FairyTaleService {
	//특정 유저가 구매한 동화
	public ArrayList<FairyTaleVO> select(MemberVO vo);
	
	//테일샵에 보여질 모든 동화
	public ArrayList<FairyTaleVO> fairytale();
	
	//별점이 3점 이상인 동화
	public ArrayList<FairyTaleVO> recommendlist();
	
	//테일샵에서 동화 구매
	public void buyinsert(BuyinglistVO vo);

	//가장 많이 구매한 태그의 수를 찾음
	public int maxcount();
	
	//가장 많이 구매한 태그를 찾음
	public String gettag(int i);
	
	//가장 많이 구매한 태그를 이용하여 그와 같은 태그를 보여준다.
	public ArrayList<FairyTaleVO> tagrecommend(String tag);

}
