package com.entities;

import java.util.Date;

public class Todo {

	private String Title;
	private String Content;
	private Date CreationDate;
	
	public Todo(String title, String content, Date creationDate) {
		super();
		Title = title;
		Content = content;
		CreationDate = creationDate;
	}
	public Todo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	@Override
	public String toString() {
		return "Todo [Title=" + Title + ":" + Content + ", CreationDate=" + CreationDate + "]";
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public Date getCreationDate() {
		return CreationDate;
	}
	public void setCreationDate(Date creationDate) {
		CreationDate = creationDate;
	}
	
}
