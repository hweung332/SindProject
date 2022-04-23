package com.passmall.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.passmall.domain.Criteria;
import com.passmall.domain.OrderDetailInfo;
import com.passmall.domain.OrderVO;
import com.passmall.mapper.AdminOrderMapper;

@Service
public class AdminOrderServiceImpl implements AdminOrderService {

	@Inject
	private AdminOrderMapper oMapper;
	
	@Override
	public List<OrderVO> getListWithPaging(Criteria cri, String startDate, String endDate) {
		// TODO Auto-generated method stub
		return oMapper.getListWithPaging(cri, startDate, endDate);
	}

	@Override
	public int getTotalCount(Criteria cri, String startDate, String endDate) {
		// TODO Auto-generated method stub
		return oMapper.getTotalCount(cri, startDate, endDate);
	}

	@Override
	public void orderStateChange(Integer ord_code, String ord_state) {
		// TODO Auto-generated method stub
		oMapper.orderStateChange(ord_code, ord_state);
	}

	@Transactional
	@Override
	public void ordDelete(Integer ord_code) {
		
		// 순서중요. 주문상세테이블의 주문번호컬럼이 참조키설정관계때문에.
		//주문상세삭제
		oMapper.ordDetailDelete(ord_code);
		//주문삭제
		oMapper.ordDelete(ord_code);
		
	}

	@Override
	public List<OrderDetailInfo> ordDetailInfo(Integer ord_code) {
		// TODO Auto-generated method stub
		return oMapper.ordDetailInfo(ord_code);
	}

	@Override
	public void ordDetailDelete(Integer ord_code, Integer pro_num) {
		// TODO Auto-generated method stub
		oMapper.ordDetailListDelete(ord_code, pro_num);
	}

	@Override
	public List<OrderVO> getOrderStateListWithPaging(Criteria cri, String ord_state) {
		// TODO Auto-generated method stub
		return oMapper.getOrderStateListWithPaging(cri, ord_state);
	}

	@Override
	public int getOrderStateTotalCount(Criteria cri, String ord_state) {
		// TODO Auto-generated method stub
		return oMapper.getOrderStateTotalCount(cri, ord_state);
	}

	@Override
	public int getOrderStateCount(String ord_state) {
		// TODO Auto-generated method stub
		return oMapper.getOrderStateCount(ord_state);
	}

	

}
