package com.enough.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.enough.dto.ProductVO;

@Mapper
public interface IEnoughDao {
	// 상품목록
	List<ProductVO> getproductList();
	// 추가
	void insertpr(ProductVO pvo);
	// 수정
	// 삭제
	
}
