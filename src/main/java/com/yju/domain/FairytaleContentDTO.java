package com.yju.domain;

public class FairytaleContentDTO {
	private int fai_cont_page;
	private String fairytale_id;
	private String fai_cont_file;
	private String workplace_id;
	
	public String getWorkplace_id() {
		return workplace_id;
	}
	public void setWorkplace_id(String workplace_id) {
		this.workplace_id = workplace_id;
	}
	public int getFai_cont_page() {
		return fai_cont_page;
	}
	public void setFai_cont_page(int fai_cont_page) {
		this.fai_cont_page = fai_cont_page;
	}
	public String getFairytale_id() {
		return fairytale_id;
	}
	public void setFairytale_id(String fairytale_id) {
		this.fairytale_id = fairytale_id;
	}
	public String getFai_cont_file() {
		return fai_cont_file;
	}
	public void setFai_cont_file(String fai_cont_file) {
		this.fai_cont_file = fai_cont_file;
	}
	@Override
	public String toString() {
		return "FairytaleContentDTO [fai_cont_page=" + fai_cont_page + ", fairytale_id=" + fairytale_id
				+ ", fai_cont_file=" + fai_cont_file + ", workplace_id=" + workplace_id + "]";
	}
}
