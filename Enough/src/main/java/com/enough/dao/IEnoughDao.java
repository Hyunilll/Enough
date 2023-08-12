package com.enough.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.enough.dto.BrandVO;
import com.enough.dto.Paging;
import com.enough.dto.ProductVO;

@Mapper
public interface IEnoughDao {
	// 상품목록( 상품 리스트 )
	List<ProductVO> getproductList(Paging paging, String key);
	// 추가 폼(브랜드 리스트 가져감)
	List<BrandVO> getBrandList();
	// 상품추가
	void insertpr(ProductVO pvo);
	// 미송추가(추가주문)
	void addpr(int quantity1, int pseq);
	// 배송완료
	void updatepr(int quantity1, int quantity2, int quantity3, int quantity4,int pseq);
	// 출고완료
	void updatecompr(int quantity3, int pseq);
	// 상품삭제
	void deletepr(int pseq);
	// 브랜드 추가 
	void insertbr(BrandVO bvo);
	// 브랜드 삭제 
	void deletebr(int bseq);
	
	// 페이징
	int getAllCount(String string, String string2, String key);
	
	
	

	
	
}
