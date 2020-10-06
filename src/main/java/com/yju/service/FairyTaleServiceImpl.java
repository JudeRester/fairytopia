package com.yju.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.BuyinglistVO;
import com.yju.domain.FairyTaleVO;
import com.yju.domain.MemberDTO;
import com.yju.mapper.FairyTaleMapper;

@Service
public class FairyTaleServiceImpl implements FairyTaleService{
	public static final Logger log = LoggerFactory.getLogger(FairyTaleServiceImpl.class);
	
	@Autowired
	private FairyTaleMapper mapper;
	
	@Override
	public ArrayList<FairyTaleVO> select(MemberDTO vo){
		return mapper.select(vo);
	}
	
	@Override
	public ArrayList<FairyTaleVO> fairytale(){
		return mapper.fairytale();
	}
	
	@Override
	public void buyinsert(BuyinglistVO vo) {
		log.info("success " + vo);
		mapper.buyinsert(vo);
	}
	
	@Override
	public ArrayList<FairyTaleVO> recommendlist(){
		return mapper.recommendlist();
	}
	
	@Override
	public int maxcount() {
		return mapper.maxcount();
	}
	
	@Override
	public String gettag(int i) {
		return mapper.gettag(i);
	}
	
	@Override
	public ArrayList<FairyTaleVO> tagrecommend(String tag){
		return mapper.tagrecommend(tag);
	}
	
	@Override
	public long grade(String name) {
		return mapper.grade(name);
	}
	
	@Override
	public void updatecount(FairyTaleVO vo) {
		mapper.updatecount(vo);
	}
	
	@Override
	public ArrayList<FairyTaleVO> search(String name) {
		return mapper.search(name);
	}
	
	@Override
	public String book(String name) {
		return mapper.book(name);
	}
}
