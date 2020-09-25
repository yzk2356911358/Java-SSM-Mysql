package com.yzk.nfcp.model;

public class Gouwc {
	private int id;
	private int uid;
	private String gname;
	private String dj;
	private int sl;

	public Gouwc(int id, int uid, String gname, String dj, int sl) {
		super();
		this.id = id;
		this.uid = uid;
		this.gname = gname;
		this.dj = dj;
		this.sl = sl;
	}

	public Gouwc() {
		super();
	}

	@Override
	public String toString() {
		return "Gouwc [id=" + id + ", uid=" + uid + ", gname=" + gname + ", dj=" + dj + ", sl=" + sl + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getDj() {
		return dj;
	}

	public void setDj(String dj) {
		this.dj = dj;
	}

	public int getSl() {
		return sl;
	}

	public void setSl(int sl) {
		this.sl = sl;
	}

}
