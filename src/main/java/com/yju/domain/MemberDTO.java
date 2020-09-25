package com.yju.domain;

public class MemberDTO {
	private String mem_id;
	private String mem_passwd;
	private String mem_nickname;
	private String mem_ph;
	private int mem_aut;
	private String mem_role;
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_passwd() {
		return mem_passwd;
	}
	public void setMem_passwd(String mem_passwd) {
		this.mem_passwd = mem_passwd;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public String getMem_ph() {
		return mem_ph;
	}
	public void setMem_ph(String mem_ph) {
		this.mem_ph = mem_ph;
	}
	public int getMem_aut() {
		return mem_aut;
	}
	public void setMem_aut(int mem_aut) {
		this.mem_aut = mem_aut;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [mem_id=" + mem_id + ", mem_passwd=" + mem_passwd + ", mem_nickname=" + mem_nickname
				+ ", mem_ph=" + mem_ph + ", mem_aut=" + mem_aut + ", mem_role=" + mem_role + "]";
	}
	public String getMem_role() {
		return mem_role;
	}
	public void setMem_role(String mem_role) {
		this.mem_role = mem_role;
	}
}
