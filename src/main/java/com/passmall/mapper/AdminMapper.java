package com.passmall.mapper;

import com.passmall.domain.AdminVO;

public interface AdminMapper {

	public AdminVO adminLogin(String ad_userid);
	
	public int adminRegister(AdminVO vo);
}
