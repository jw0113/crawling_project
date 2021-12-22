package com.spring.finalcrawling.model;

public class DbdataVO {
	
	private String index;
	private String location;
	private int category;
	private String title;
	
	public String getIndex() {
		return index;
	}
	public void setIndex(String index) {
		this.index = index;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "DbdataVO [index=" + index + ", location=" + location + ", category=" + category + ", title=" + title
				+ "]";
	}
	
	
}
