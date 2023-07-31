package com.enough.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enough.dao.IEnoughDao;
import com.enough.dto.ProductVO;

@Service
public class EnoughService {
	
	@Autowired
	IEnoughDao edao;

	public HashMap<String, Object> getproductList(HttpServletRequest request) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ProductVO> productList = edao.getproductList();
		result.put("productList" , productList);	
		return result;
	}
	
	public void insertpr(ProductVO pvo) {
		 edao.insertpr(pvo);
		
	}
}
