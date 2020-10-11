package com.yju.domain;

public class FairytaleDTO {
	private String workplace_id;
	private String fairytale_id;
	private String fairytale_name;
	private int fairytale_price;
	private int fairytale_page;
	private int fai_avg_grade;
	private String fairytale_detail;
	private String cover;
	private String fai_tag_name;
	public String getWorkplace_id() {
		return workplace_id;
	}
	public void setWorkplace_id(String workplace_id) {
		this.workplace_id = workplace_id;
	}
	public String getFairytale_id() {
		return fairytale_id;
	}
	public void setFairytale_id(String fairytale_id) {
		this.fairytale_id = fairytale_id;
	}
	public String getFairytale_name() {
		return fairytale_name;
	}
	public void setFairytale_name(String fairytale_name) {
		this.fairytale_name = fairytale_name;
	}
	public int getFairytale_price() {
		return fairytale_price;
	}
	public void setFairytale_price(int fairytale_price) {
		this.fairytale_price = fairytale_price;
	}
	public int getFairytale_page() {
		return fairytale_page;
	}
	public void setFairytale_page(int fairytale_page) {
		this.fairytale_page = fairytale_page;
	}
	public int getFai_avg_grade() {
		return fai_avg_grade;
	}
	public void setFai_avg_grade(int fai_avg_grade) {
		this.fai_avg_grade = fai_avg_grade;
	}
	
	@Override
	public String toString() {
		return "FairytaleDTO [workplace_id=" + workplace_id + ", fairytale_id=" + fairytale_id + ", fairytale_name="
				+ fairytale_name + ", fairytale_price=" + fairytale_price + ", fairytale_page=" + fairytale_page
				+ ", fai_avg_grade=" + fai_avg_grade + ", fairytale_detail=" + fairytale_detail + ", cover=" + cover
				+ ", fai_tag_name=" + fai_tag_name + "]";
	}
	public String getFairytale_detail() {
		return fairytale_detail;
	}
	public void setFairytale_detail(String fairytale_detail) {
		this.fairytale_detail = fairytale_detail;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getFai_tag_name() {
		return fai_tag_name;
	}
	public void setFai_tag_name(String fai_tag_name) {
		this.fai_tag_name = fai_tag_name;
	}
	
}
