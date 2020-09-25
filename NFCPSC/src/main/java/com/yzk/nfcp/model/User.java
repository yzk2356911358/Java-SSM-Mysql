package com.yzk.nfcp.model;

public class User {
	private int id;
	private String username;
	private String password;
	private String gender;
	private int age;

	public User(int id, String username, String password, String gender, int age) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.age = age;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", gender=" + gender + ", age="
				+ age + "]";
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
