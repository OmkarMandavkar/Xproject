package com.entities;

import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "logindata")
public class Login {

	@Id
	private int id;
	
	@Column(name= "name", unique=true)
	private String name;
	
	@Column(name= "dept")
	private String dept;
	
	@Column(name= "salary")	
	private int salary;
	
	@Column(name= "date")
	private String joindate;
	
	
	public Login(String name, String dept, int salary, String joindate) {
		super();
		this.id = new Random().nextInt(100);
		this.name = name;
		this.dept = dept;
		this.salary = salary;
		this.joindate = joindate;
	}
	
	
	public Login() {
		super();
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
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	
	
}
