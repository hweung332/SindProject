package com.passmall.service;

import java.util.List;

import com.passmall.domain.CategoryVO;
import com.passmall.domain.Criteria;
import com.passmall.domain.ProductVO;

public interface UserProductService {

	public List<CategoryVO> mainCategory();
	
	public List<CategoryVO> subCategory(Integer cate_code);
	
	public List<ProductVO> getListWithPaging(Integer cate_code, Criteria cri);
	
	public int getTotalCount(Integer cate_code);
	
	public ProductVO productDetail(Integer	pro_num);
	
	public List<ProductVO> productListByCategory(Integer pro_new);
}
