package com.passmall.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.passmall.domain.OrderDetail;
import com.passmall.domain.OrderInfoVO;
import com.passmall.domain.OrderVO;

public interface OrderMapper {

	public List<OrderInfoVO> orderInfo(String mbsp_id);
	
	public List<OrderInfoVO> directOrderInfo(@Param("pro_num") Integer pro_num, @Param("ord_amount") Integer ord_amount);
	
	public void orderInsert(OrderVO vo);
	
	public void orderDetailInsert(OrderDetail vo);
	
	
}
