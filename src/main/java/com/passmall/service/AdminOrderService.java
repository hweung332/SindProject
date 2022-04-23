package com.passmall.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.passmall.domain.Criteria;
import com.passmall.domain.OrderDetailInfo;
import com.passmall.domain.OrderVO;

public interface AdminOrderService {

	public List<OrderVO> getListWithPaging(Criteria cri, String startDate, String endDate);
	
	public int getTotalCount(Criteria cri, String startDate, String endDate);
	
	public List<OrderVO> getOrderStateListWithPaging(Criteria cri, String ord_state);
	
	public int getOrderStateTotalCount(Criteria cri, String ord_state);
	
	
	public void orderStateChange(Integer ord_code, String ord_state);
	
	public void ordDelete(Integer ord_code);
	
	public List<OrderDetailInfo> ordDetailInfo(Integer ord_code);
	
	public void ordDetailDelete(Integer ord_code, Integer pro_num);
	
	public int getOrderStateCount(String ord_state);
	
}
