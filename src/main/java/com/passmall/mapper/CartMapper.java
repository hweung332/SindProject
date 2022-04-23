package com.passmall.mapper;

import java.util.List;

import com.passmall.domain.CartListVO;
import com.passmall.domain.CartVO;

public interface CartMapper {

	public void cartAdd(CartVO vo);
	
	public List<CartListVO> cartList(String mbsp_id );
	
	public void cartDel(Integer cart_code);
	
	public void cartAllDel(String mbsp_id);
	
}
