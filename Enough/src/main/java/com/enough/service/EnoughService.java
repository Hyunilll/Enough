package com.enough.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enough.dao.IEnoughDao;
import com.enough.dto.BrandVO;
import com.enough.dto.Paging;
import com.enough.dto.ProductVO;

@Service
public class EnoughService {
	
	@Autowired
	IEnoughDao edao;

	public HashMap<String, Object> getproductList(HttpServletRequest request) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		HttpSession session = request.getSession();
		
		if ( request.getParameter("first") != null) {
			session.removeAttribute("page");
			session.removeAttribute("key");
		}
		
		int page = 1;
		if( request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
			session.setAttribute("page", page);
		} else if( session.getAttribute("page")!= null ) {
			page = (int) session.getAttribute("page");
		} else {
			page = 1;
			session.removeAttribute("page");
		}
		
		String key = "";
		if( request.getParameter("key") != null ) {
			key = request.getParameter("key");
			session.setAttribute("key", key);
		} else if( session.getAttribute("key")!= null ) {
			key = (String)session.getAttribute("key");
		} else {
			session.removeAttribute("key");
			key = "";
		} 
		
		Paging paging = new Paging();
		paging.setPage(page);
		
		int count = edao.getAllCount( "productList","name", key );
		paging.setTotalCount(count);
		paging.paging();
		
		
		List<ProductVO> productList = edao.getproductList( paging, key );
		result.put("productList" , productList);	
		result.put("paging", paging);
		result.put("key", key);
		return result;
	}
	
	public void insertpr(ProductVO pvo) {
		 edao.insertpr(pvo);
		
	}

	public void updatepr(int quantity1, int quantity2, int quantity3, int pseq) {
		edao.updatepr(quantity1, quantity2, quantity3, pseq);
		
	}

	
	public void deletepr(int pseq) {
		edao.deletepr(pseq);
		
	}

	public HashMap<String, Object> getBrandList(HttpServletRequest request) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<BrandVO> brandList = edao.getBrandList();
		result.put("brandList", brandList);
		return result;
	}

	public void insertbr(BrandVO bvo) {
		edao.insertbr(bvo);
		
	}


	public void deletebr(int bseq) {
		edao.deletebr(bseq);
	}

	public void updatecompr(int quantity3, int pseq) {
		edao.updatecompr(quantity3, pseq);
		
	}

	public void addpr(int quantity1, int pseq) {
		edao.addpr(quantity1, pseq);		
	}

	
}
