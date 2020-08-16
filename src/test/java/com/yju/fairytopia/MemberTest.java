package com.yju.fairytopia;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.yju.domain.MemberDTO;
import com.yju.service.MemberService;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberTest {
	Logger log = Logger.getLogger(MemberTest.class);
	
	@Autowired
	private MemberService service;
	
//	@Test
	public void testIntert() {
		log.info(service.checkId("asdf"));
		
	}
	
//	@Test
	public void testJoin() {
		MemberDTO dto = new MemberDTO();
		dto.setMem_id("asdff");
		dto.setMem_passwd("asdf");
		dto.setMem_nickname("asdf");
		dto.setMem_ph("01011112222");
		dto.setMem_aut(1);
		
		service.join(dto);
	}
	
	@Test
	public void testLogin() {
		MemberDTO dto = new MemberDTO();
		dto.setMem_id("qwer");
		dto.setMem_passwd("asdf");
		service.login(dto);
	}
}
