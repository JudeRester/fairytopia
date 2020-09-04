package com.yju.domain;

public class TalkRoomDTO {
	private String talk_id;
	private String mem_a;
	private String mem_b;
	private char favorite;
	private String snippet;
	public String getTalk_id() {
		return talk_id;
	}
	public void setTalk_id(String talk_id) {
		this.talk_id = talk_id;
	}
	public String getMem_a() {
		return mem_a;
	}
	public void setMem_a(String mem_a) {
		this.mem_a = mem_a;
	}
	public String getMem_b() {
		return mem_b;
	}
	public void setMem_b(String mem_b) {
		this.mem_b = mem_b;
	}
	public char getFavorite() {
		return favorite;
	}
	public void setFavorite(char favorite) {
		this.favorite = favorite;
	}
	@Override
	public String toString() {
		return "TalkRoomDTO [talk_id=" + talk_id + ", mem_a=" + mem_a + ", mem_b=" + mem_b + ", favorite=" + favorite
				+ ", snippet=" + snippet + "]";
	}
	public String getSnippet() {
		return snippet;
	}
	public void setSnippet(String snippet) {
		this.snippet = snippet;
	}
}
