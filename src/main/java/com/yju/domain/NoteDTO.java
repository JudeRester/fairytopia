package com.yju.domain;

import java.sql.Date;

public class NoteDTO {
	private int seq;
	private String receiver;
	private String sender;
	private String cont;
	private Date sdate;
	private int checked;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}


	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	public int getChecked() {
		return checked;
	}
	public void setChecked(int checked) {
		this.checked = checked;
	}
	@Override
	public String toString() {
		return "NoteDTO [seq=" + seq + ", reciever=" + receiver + ", sender=" + sender + ", cont=" + cont + ", sdate="
				+ sdate + ", checked=" + checked + "]";
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
}
