package com.yju.domain;

import java.sql.Date;

public class TalkContentDTO {
	private Date send_date;
	private String talk_id;
	private String mem_send;
	private String mem_receive;
	private String talk_cont_file;
	private String cont;
	private char checked;
	public Date getSend_date() {
		return send_date;
	}
	public void setSend_date(Date send_date) {
		this.send_date = send_date;
	}
	public String getTalk_id() {
		return talk_id;
	}
	public void setTalk_id(String talk_id) {
		this.talk_id = talk_id;
	}
	public String getMem_send() {
		return mem_send;
	}
	public void setMem_send(String mem_send) {
		this.mem_send = mem_send;
	}
	public String getMem_receive() {
		return mem_receive;
	}
	public void setMem_receive(String mem_receive) {
		this.mem_receive = mem_receive;
	}
	public String getTalk_cont_file() {
		return talk_cont_file;
	}
	public void setTalk_cont_file(String talk_cont_file) {
		this.talk_cont_file = talk_cont_file;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public char getChecked() {
		return checked;
	}
	public void setChecked(char checked) {
		this.checked = checked;
	}
	@Override
	public String toString() {
		return "TalkContentDTO [send_date=" + send_date + ", talk_id=" + talk_id + ", mem_send=" + mem_send
				+ ", mem_receive=" + mem_receive + ", talk_cont_file=" + talk_cont_file + ", cont=" + cont
				+ ", checked=" + checked + "]";
	}
}
