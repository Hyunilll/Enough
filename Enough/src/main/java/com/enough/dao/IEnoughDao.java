package com.enough.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.enough.dto.BrandVO;
import com.enough.dto.ProductVO;

@Mapper
public interface IEnoughDao {
	// 상품목록( 상품 리스트 )
	List<ProductVO> getproductList();
	// 추가 폼(브랜드 리스트 가져감)
	List<BrandVO> getBrandList();
	// 추가
	void insertpr(ProductVO pvo);
	// 수정
	void updatepr(int quantity, int pseq);
	// 삭제
	void deletepr(int pseq);
	// 브랜드 추가 
	void insertbr(BrandVO bvo);
	// 브랜드 삭제 
	void deletebr(int bseq);
	
}
