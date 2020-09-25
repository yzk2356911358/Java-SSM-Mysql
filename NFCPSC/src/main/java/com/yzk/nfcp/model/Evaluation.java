package com.yzk.nfcp.model;

public class Evaluation {
	private int id;
	private String username;
	private String date;
	private String lr;
	private String hf;
	private int gid;
	public Evaluation(int id, String username, String date, String lr, String hf, int gid) {
		super();
		this.id = id;
		this.username = username;
		this.date = date;
		this.lr = lr;
		this.hf = hf;
		this.gid = gid;
	}
	public Evaluation() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Evaluation [id=" + id + ", username=" + username + ", date=" + date + ", lr=" + lr + ", hf=" + hf
				+ ", gid=" + gid + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getLr() {
		return lr;
	}
	public void setLr(String lr) {
		this.lr = lr;
	}
	public String getHf() {
		return hf;
	}
	public void setHf(String hf) {
		this.hf = hf;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	
}
