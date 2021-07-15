package com.take.portfolio.dao;

import java.sql.Date;

public class BoardDao {

	private static final long serialVersionUID = 1L;
	private String title;
	private String contents;
	private String reg_id;
	private Date date;

	public String getReg_id() {
		return reg_id;
	}

	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public BoardDao() {
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public BoardDao(String title, String contents, String reg_id, Date date) {
		super();
		this.title = title;
		this.contents = contents;
		this.reg_id = reg_id;
		this.date = date;
	}
}
