package com.heja.groupproject.repository;

import com.heja.groupproject.model.Admin;

public interface AdminRepository {
	
	boolean checkLogin(String username, String password);
	
	
}
