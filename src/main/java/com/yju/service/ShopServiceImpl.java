package com.yju.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yju.domain.Criteria;
import com.yju.domain.FairytaleDTO;
import com.yju.mapper.ShopMapper;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopMapper mapper;
	
	@Override
	public List<FairytaleDTO> getList(Criteria crt) {
		return mapper.getList(crt);
	}

	@Override
	public int total(Criteria crt) {
		// TODO Auto-generated method stub
		return 0;
	}

}
