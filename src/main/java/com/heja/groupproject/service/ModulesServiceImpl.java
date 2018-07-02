package com.heja.groupproject.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.heja.groupproject.model.Modules;
import com.heja.groupproject.repository.ModulesRepository;

@Service
@Transactional
public class ModulesServiceImpl implements ModulesService {
	@Autowired
	private ModulesRepository modulesRepository;
	
	@Override
	public void addModule(Modules modules) {
		modulesRepository.addModule(modules);
	}

	@Override
	public void updateModule(Modules modules) {
		modulesRepository.updateModule(modules);
	}

	@Override
	public void deleteModule(int id) {
		modulesRepository.deleteModule(id);
	}

	@Override
	public Modules getModuleById(int id) {
		return modulesRepository.getModuleById(id);
	}

	@Override
	public List<Modules> allmodules() {
		return modulesRepository.allmodules();
	}


}
