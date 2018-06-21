//package com.heja.groupproject.model;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.OneToOne;
//
//@Entity
//public class Modules {
//	
//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
//	private int id;
//	@Column(name = "module_name")
//	private String moduleName;
//	@OneToOne
//	private Course course;
//	
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
//	public String getModuleName() {
//		return moduleName;
//	}
//	public void setModuleName(String moduleName) {
//		this.moduleName = moduleName;
//	}
//	public Course getCourse() {
//		return course;
//	}
//	public void setCourse(Course course) {
//		this.course = course;
//	}
//	
//	
//}
