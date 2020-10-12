package com.yju.mapper;

import java.util.List;

import com.yju.domain.Criteria;
import com.yju.domain.FairytaleDTO;

public interface ShopMapper {

	public List<FairytaleDTO> getList(Criteria crt);

}
