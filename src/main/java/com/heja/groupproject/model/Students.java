package com.heja.groupproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity  
public class Students {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	@Column(name = "user_name")
	private String username;
	private String password;
	@Column(name = "roll_no")
	private int rollNo;
	@OneToOne
	private Course course;
	@OneToMany
//	private Modules modules;
//	@Column(name = "class_no")
//	private int classNo;
//	private int attendence;
//	private int report;

//	public Modules getModules() {
//		return modules;
//	}
//
//	public void setModules(Modules modules) {
//		this.modules = modules;
//	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public int getRollNo() {
		return rollNo;
	}

	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

//	public int getModuleId() {
//		return moduleId;
//	}
//
//	public void setModuleId(int moduleId) {
//		this.moduleId = moduleId;
//	}
//
//	public int getClassNo() {
//		return classNo;
//	}
//
//	public void setClassNo(int classNo) {
//		this.classNo = classNo;
//	}
//
//	public int getAttendence() {
//		return attendence;
//	}
//
//	public void setAttendence(int attendence) {
//		this.attendence = attendence;
//	}
//
//	public int getReport() {
//		return report;
//	}
//
//	public void setReport(int report) {
//		this.report = report;
//	}
}
