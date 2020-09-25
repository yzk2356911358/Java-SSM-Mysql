package com.yzk.nfcp.model;

public class Goods {
	private int id;
	private String name;
	private String zl;
	private int kc;
	private String dj;
	private String ly;
	private String img;
	public Goods(int id, String name, String zl, int kc, String dj, String ly, String img) {
		super();
		this.id = id;
		this.name = name;
		this.zl = zl;
		this.kc = kc;
		this.dj = dj;
		this.ly = ly;
		this.img = img;
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", zl=" + zl + ", kc=" + kc + ", dj=" + dj + ", ly=" + ly
				+ ", img=" + img + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZl() {
		return zl;
	}
	public void setZl(String zl) {
		this.zl = zl;
	}
	public int getKc() {
		return kc;
	}
	public void setKc(int kc) {
		this.kc = kc;
	}
	public String getDj() {
		return dj;
	}
	public void setDj(String dj) {
		this.dj = dj;
	}
	public String getLy() {
		return ly;
	}
	public void setLy(String ly) {
		this.ly = ly;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
