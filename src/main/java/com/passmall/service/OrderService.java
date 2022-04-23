package com.passmall.service;

import java.util.List;

import com.passmall.domain.OrderDetailList;
import com.passmall.domain.OrderInfoVO;
import com.passmall.domain.OrderVO;

public interface OrderService {

	public List<OrderInfoVO> orderInfo(String mbsp_id);
	
	public void orderInsert(OrderVO vo, OrderDetailList vo2);
	
	public List<OrderInfoVO> directOrderInfo(Integer pro_num, Integer ord_amount);
}
