package com.yju.domain;

import java.sql.Timestamp;

public class CoworkerVO {
	private int seq;
	private String mem_id;
	private int board_type;
	private String mem_nickname;
	private String title;
	private String cont;
	private String uploadedfile;
	private int hits;
	private Timestamp wdate;
	private Timestamp udate;
	
	
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	
	public Timestamp getWdate() {
		return wdate;
	}
	public void setWdate(Timestamp wdate) {
		this.wdate = wdate;
	}
	public Timestamp getUdate() {
		return udate;
	}
	public void setUdate(Timestamp udate) {
		this.udate = udate;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getBoard_type() {
		return board_type;
	}
	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getUploadedfile() {
		return uploadedfile;
	}
	public void setUploadedfile(String uploadedfile) {
		this.uploadedfile = uploadedfile;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	@Override
	public String toString() {
		return "CoworkerVO [seq=" + seq + ", mem_id=" + mem_id + ", board_type=" + board_type + ", mem_nickname="
				+ mem_nickname + ", title=" + title + ", cont=" + cont + ", uploadedFile=" + uploadedfile + ", hits="
				+ hits + ", wdate=" + wdate + ", udate=" + udate + "]";
	}
	
}
