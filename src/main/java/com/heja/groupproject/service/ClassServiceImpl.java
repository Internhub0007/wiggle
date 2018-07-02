package com.heja.groupproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.heja.groupproject.model.Class;
import com.heja.groupproject.repository.ClassRepository;

@Service
@Transactional
public class ClassServiceImpl implements ClassService {
	@Autowired
	private ClassRepository classRepository;

	@Override
	public void addClass(Class class1) {
		classRepository.addClass(class1);
	}

	@Override
	public void updateClass(Class class1) {
		classRepository.updateClass(class1);
	}

	@Override
	public void deleteClass(int id) {
		classRepository.deleteClass(id);
	}

	@Override
	public Class getClassById(int id) {
		return classRepository.getClassById(id);
	}

	@Override
	public List<Class> allClasses() {
		return classRepository.allClasses();
	}

}
