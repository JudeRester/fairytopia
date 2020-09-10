package com.yju.domain;

public class ScheduleDTO {
	private String calendar_id;
	private String workplace_id;
	private String calendar_name;
	private String calendar_detail;
	public String getCalendar_id() {
		return calendar_id;
	}
	public void setCalendar_id(String calendar_id) {
		this.calendar_id = calendar_id;
	}
	public String getWorkplace_id() {
		return workplace_id;
	}
	public void setWorkplace_id(String workplace_id) {
		this.workplace_id = workplace_id;
	}
	public String getCalendar_name() {
		return calendar_name;
	}
	public void setCalendar_name(String calendar_name) {
		this.calendar_name = calendar_name;
	}
	public String getCalendar_detail() {
		return calendar_detail;
	}
	public void setCalendar_detail(String calendar_detail) {
		this.calendar_detail = calendar_detail;
	}
	@Override
	public String toString() {
		return "ScheduleDTO [calendar_id=" + calendar_id + ", workplace_id=" + workplace_id + ", calendar_name="
				+ calendar_name + ", calendar_detail=" + calendar_detail + "]";
	}
}
