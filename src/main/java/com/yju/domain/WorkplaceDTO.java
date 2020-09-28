package com.yju.domain;

import java.util.List;

public class WorkplaceDTO {
	String workplace_id;
	String workplace_name;
	String workplace_detail;
	char workplace_status;
	List<MemberDTO> members;
	String mem_id;

	String workplace_thumbnail;

	/*
	 * MultipartFile workplace_thumbnail;
	 * 
	 * public MultipartFile getWorkplace_thumbnail() { return workplace_thumbnail; }
	 * public void setWorkplace_thumbnail(MultipartFile workplace_thumbnail) {
	 * this.workplace_thumbnail = workplace_thumbnail; }
	 */
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getWorkplace_id() {
		return workplace_id;
	}
	public void setWorkplace_id(String workplace_id) {
		this.workplace_id = workplace_id;
	}
	public String getWorkplace_name() {
		return workplace_name;
	}
	public void setWorkplace_name(String workplace_name) {
		this.workplace_name = workplace_name;
	}
	public String getWorkplace_detail() {
		return workplace_detail;
	}
	public void setWorkplace_detail(String workplace_detail) {
		this.workplace_detail = workplace_detail;
	}
	public char getWorkplace_status() {
		return workplace_status;
	}
	public void setWorkplace_status(char workplace_status) {
		this.workplace_status = workplace_status;
	}
	@Override
	public String toString() {

		return "WorkplaceDTO [workplace_id=" + workplace_id + ", workplace_name=" + workplace_name
				+ ", workplace_detail=" + workplace_detail + ", workplace_status=" + workplace_status + ", members="
				+ members + ", mem_id=" + mem_id + ", workplace_thumbnail=" + workplace_thumbnail + "]";
	}
	public String getWorkplace_thumbnail() {
		return workplace_thumbnail;
	}
	public void setWorkplace_thumbnail(String workplace_thumbnail) {
		this.workplace_thumbnail = workplace_thumbnail;

	}
	public List<MemberDTO> getMembers() {
		return members;
	}
	public void setMembers(List<MemberDTO> list) {
		this.members = list;
	}
}
