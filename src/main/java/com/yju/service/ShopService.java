package com.yju.service;

import java.util.List;

import com.yju.domain.Criteria;
import com.yju.domain.FairytaleDTO;

public interface ShopService {
	public List<FairytaleDTO> getList(Criteria crt);

	public int total(Criteria crt);
}
