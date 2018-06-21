package com.heja.groupproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.heja.groupproject.repository.AdminRepository;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Override
	public boolean checkLogin(String username, String password) {
		return adminRepository.checkLogin(username, password);
	}

}
