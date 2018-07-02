package com.heja.groupproject.repository;

import java.util.List;

import com.heja.groupproject.model.Class;

public interface ClassRepository {
	
	void addClass(Class class1);

	void updateClass(Class class1);

	void deleteClass(int id);

	Class getClassById(int id);

	List<Class> allClasses();
}
