package com.yju.fairytopia;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.yju.domain.MemberVO;
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
		MemberVO vo = new MemberVO();
		vo.setMem_id("asdff");
		vo.setMem_passwd("asdf");
		vo.setMem_nickname("asdf");
		vo.setMem_ph("01011112222");
		vo.setMem_aut(1);
		
		service.join(vo);
	}
	
	@Test
	public void testLogin() {
		MemberVO vo = new MemberVO();
		vo.setMem_id("qwer");
		vo.setMem_passwd("asdf");
		service.login(vo);
	}
}
