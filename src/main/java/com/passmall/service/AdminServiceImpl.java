package com.passmall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.passmall.domain.AdminVO;
import com.passmall.mapper.AdminMapper;

import lombok.Setter;

@Service
public class AdminServiceImpl implements AdminService {

	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
	@Override
	public AdminVO adminLogin(String ad_userid) {
		// TODO Auto-generated method stub
		return mapper.adminLogin(ad_userid);
	}

	@Override
	public int adminRegister(AdminVO vo) {
		// TODO Auto-generated method stub
		return mapper.adminRegister(vo);
	}

}
