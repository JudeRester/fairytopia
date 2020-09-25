package com.yju.domain;

public class WorkplaceFileDTO {
	private String file_id;
	private String workplace_id;
	private String file_name;
	private int file_page;
	private String file_kind;
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public String getWorkplace_id() {
		return workplace_id;
	}
	public void setWorkplace_id(String workplace_id) {
		this.workplace_id = workplace_id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public int getFile_page() {
		return file_page;
	}
	public void setFile_page(int file_page) {
		this.file_page = file_page;
	}
	public String getFile_kind() {
		return file_kind;
	}
	public void setFile_kind(String file_kind) {
		this.file_kind = file_kind;
	}
	@Override
	public String toString() {
		return "WorkplaceFileDTO [file_id=" + file_id + ", workplace_id=" + workplace_id + ", file_name=" + file_name
				+ ", file_page=" + file_page + ", file_kind=" + file_kind + "]";
	}
}
