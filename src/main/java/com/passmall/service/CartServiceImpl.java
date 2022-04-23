package com.passmall.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.passmall.domain.CartListVO;
import com.passmall.domain.CartVO;
import com.passmall.mapper.CartMapper;

@Service
public class CartServiceImpl implements CartService {

	@Inject
	private CartMapper mapper;
	
	@Override
	public void cartAdd(CartVO vo) {
		
		mapper.cartAdd(vo);
	}

	@Override
	public List<CartListVO> cartList(String mbsp_id) {
		// TODO Auto-generated method stub
		return mapper.cartList(mbsp_id);
	}

	@Override
	public void cartDel(Integer cart_code) {
		// TODO Auto-generated method stub
		mapper.cartDel(cart_code);
	}

	@Override
	public void cartAllDel(String mbsp_id) {
		// TODO Auto-generated method stub
		mapper.cartAllDel(mbsp_id);
	}

}
