package com.passmall.service;

import com.passmall.domain.AdminVO;

public interface AdminService {

	public AdminVO adminLogin(String ad_userid);
	
	public int adminRegister(AdminVO vo);
}
