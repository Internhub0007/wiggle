package com.heja.groupproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Course {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "course_name")
	private String courseName;
	private int years;
//	@OneToMany
//	private Modules modules;
//	
//	public Modules getModules() {
//		return modules;
//	}
//	public void setModules(Modules modules) {
//		this.modules = modules;
//	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public int getYears() {
		return years;
	}
	public void setYears(int years) {
		this.years = years;
	}
	
}
