package com.yju.mapper;

import java.util.List;

import com.yju.domain.CoworkerVO;
import com.yju.domain.Criteria;

public interface CoworkerMapper {
	public List<CoworkerVO> getList(Criteria crt);

	public void write(CoworkerVO vo);

	public CoworkerVO get(int seq);
}
