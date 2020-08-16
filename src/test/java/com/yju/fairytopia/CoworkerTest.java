package com.yju.fairytopia;

import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.yju.domain.CoworkerDTO;
import com.yju.domain.Criteria;
import com.yju.mapper.CoworkerMapper;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CoworkerTest {
Logger log = Logger.getLogger(MemberTest.class);
	
	@Autowired
	private CoworkerMapper service;
	
	@Test
	public void testPaging() {
		Criteria crt = new Criteria();
		crt.setBoard_type(0);
		crt.setPageNum(3);
		List<CoworkerDTO> list = service.getList(crt);
		list.forEach(board->System.out.println(board));
	}
}
