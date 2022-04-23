package com.passmall.domain;

import lombok.Data;

@Data
public class OrderDetailInfo {

	/* od.ord_code, 
	od.pro_num, 
	p.pro_name, 
	od.dt_amount, 
	od.dt_price, 
	p.pro_uploadpath, 
	p.pro_img
	*/
	
	private Integer ord_code;
	private String pro_name;
	private Integer pro_num;
	private int	 dt_amount;
	private int dt_price;
	private String pro_uploadpath;
	private String pro_img;
}
