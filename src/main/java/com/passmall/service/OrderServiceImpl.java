package com.passmall.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.passmall.domain.OrderDetailList;
import com.passmall.domain.OrderInfoVO;
import com.passmall.domain.OrderVO;
import com.passmall.mapper.CartMapper;
import com.passmall.mapper.OrderMapper;

@Service
public class OrderServiceImpl implements OrderService {

	@Inject
	private OrderMapper mapper;
	
	@Inject
	private CartMapper cartMapper;
	
	@Override
	public List<OrderInfoVO> orderInfo(String mbsp_id) {
		// TODO Auto-generated method stub
		return mapper.orderInfo(mbsp_id);
	}

	@Transactional
	@Override
	public void orderInsert(OrderVO order, OrderDetailList orderDetail) {
		
		//1)주문작업
		mapper.orderInsert(order); // vo안에 ord_code 변수값을 이용하여, 시퀀스값을 참조할수가 있다.
		
		Integer ord_code = order.getOrd_code();
		String mbsp_id = order.getMbsp_id();
		
		//2)주문상세 작업
//		board.getAttachList().forEach(attach -> {
//			
//			attach.setBno(board.getBno());
//			attachMapper.insert(attach);
//			
//		});	
		orderDetail.getOrderDetailList().forEach(oDetail -> {
			oDetail.setOrd_code(ord_code);
			mapper.orderDetailInsert(oDetail);
		});
		
		
		//3)장바구니 삭제. 직접구매 또는 장바구니 목록에서 구매 공통으로 실행된다.
		cartMapper.cartAllDel(mbsp_id);
	}

	@Override
	public List<OrderInfoVO> directOrderInfo(Integer pro_num, Integer ord_amount) {
		// TODO Auto-generated method stub
		return mapper.directOrderInfo(pro_num, ord_amount);
	}

}
