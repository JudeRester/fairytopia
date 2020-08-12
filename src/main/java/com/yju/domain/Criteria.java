package com.yju.domain;

public class Criteria {
	private int pageNum;
	private int amount;
	private int board_type;
	
	public int getBoard_type() {
		return board_type;
	}

	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}

	public Criteria() {
		this(1,10,0);
	}
	public Criteria(int board_type) {
		this(1,10,board_type);
	}
	
	public Criteria(int pageNum, int amount,int board_type) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public int getOffset() {
		return (pageNum -  1) * amount;
	}
	
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", board_type=" + board_type + "]";
	}
}