package com.yju.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.BuyinglistVO;
import com.yju.domain.FairyTaleVO;
import com.yju.domain.MemberVO;
import com.yju.mapper.FairyTaleMapper;

@Service
public class FairyTaleServiceImpl implements FairyTaleService{
	public static final Logger log = LoggerFactory.getLogger(FairyTaleServiceImpl.class);
	
	@Autowired
	private FairyTaleMapper mapper;
	
	@Override
	public ArrayList<FairyTaleVO> select(MemberVO vo){
		return mapper.select(vo);
	}
	
	@Override
	public ArrayList<FairyTaleVO> fairytale(){
		return mapper.fairytale();
	}
	
	@Override
	public void buyinsert(BuyinglistVO vo) {
		log.info("success" + vo);
		mapper.buyinsert(vo);
	}
	
	@Override
	public ArrayList<FairyTaleVO> recommendlist(){
		return mapper.recommendlist();
	}
}
