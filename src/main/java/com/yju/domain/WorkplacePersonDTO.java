package com.yju.domain;

public class WorkplacePersonDTO {
	private String wokplace_id;
	private String mem_id;
	private String mem_nickname;
	private String mem_role;
	public String getWokplace_id() {
		return wokplace_id;
	}
	public void setWokplace_id(String wokplace_id) {
		this.wokplace_id = wokplace_id;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_role() {
		return mem_role;
	}
	public void setMem_role(String mem_role) {
		this.mem_role = mem_role;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	@Override
	public String toString() {
		return "WorkplacePersonDTO [wokplace_id=" + wokplace_id + ", mem_id=" + mem_id + ", mem_nickname="
				+ mem_nickname + ", mem_role=" + mem_role + "]";
	}
	
}
