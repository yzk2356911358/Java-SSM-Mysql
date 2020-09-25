package com.yzk.nfcp.model;

public class  Orders{
	private int id;
	private int uid;
	private String name;
	private String dj;
	private int sl;
	private String img;
	private String sjr;
	private String addred;
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Orders(int id, int uid, String name, String dj, int sl, String img, String sjr, String addred) {
		super();
		this.id = id;
		this.uid = uid;
		this.name = name;
		this.dj = dj;
		this.sl = sl;
		this.img = img;
		this.sjr = sjr;
		this.addred = addred;
	}
	@Override
	public String toString() {
		return "Orders [id=" + id + ", uid=" + uid + ", name=" + name + ", dj=" + dj + ", sl=" + sl + ", img=" + img
				+ ", sjr=" + sjr + ", addred=" + addred + "]";
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSjr() {
		return sjr;
	}
	public void setSjr(String sjr) {
		this.sjr = sjr;
	}
	public String getAddred() {
		return addred;
	}
	public void setAddred(String addred) {
		this.addred = addred;
	}
	
}
