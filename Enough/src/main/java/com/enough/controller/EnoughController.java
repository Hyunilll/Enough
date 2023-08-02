package com.enough.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.enough.dto.BrandVO;
import com.enough.dto.ProductVO;
import com.enough.service.EnoughService;

@Controller
public class EnoughController {

	@Autowired
	EnoughService es;

	// ------------------시작페이지---------------------------
	@RequestMapping("/")
	public ModelAndView main( HttpServletRequest request
			) {
		ModelAndView mav = new ModelAndView();
		HashMap<String,Object> result = es.getproductList( request );
		mav.addObject("productList", (List<ProductVO>)result.get("productList"));
		mav.setViewName("index");
		return mav;
	}
	
	// -----------------------추가 창으로 이동 --------------
	@RequestMapping("/insertProduct")
	public ModelAndView insertProduct(HttpServletRequest request
			) { 
		ModelAndView mav = new ModelAndView();
		HashMap<String,Object> result = es.getBrandList( request );
		mav.addObject("brandList",(List<BrandVO>)result.get("brandList") );
		mav.setViewName("insertProduct");
		return mav;
	}
	
	
	// ---------------------------상품 추가 ------------------
	 @RequestMapping(value = "/insertpr", method = RequestMethod.POST)
	public String insertpr( 
							@RequestParam("price") int price,
							@RequestParam("quantity") int quantity,
							@RequestParam("name") String name,
							@RequestParam("brand") String brand
				) {
		ProductVO pvo = new ProductVO();
		pvo.setName(name);
		pvo.setBrand(brand);
		pvo.setQuantity(quantity);
		pvo.setPrice(price);

		es.insertpr(pvo);
		return"redirect:/";
	}

	 // --------------------------수량 수정 -------------------------
	 @RequestMapping (value = "/updatepr", method = RequestMethod.POST)
	 public String updatepr( @RequestParam("pseq") int pseq,
			 				 @RequestParam("quantity") int quantity
			 ) {
		 System.out.println("quantity:::"+quantity+"pseq:::"+pseq);
		 es.updatepr( quantity , pseq );		 
		 return "redirect:/";
	 }
	 
	 // -------------------------- 상품 삭제 --------------------
	
	 @RequestMapping ("/deletepr")
	 public String deletepr () {
		 
		 return "";
	 }
	 
	 // --------------------- 브랜드 추가 창으로 이동 --------------------
	 @RequestMapping ("/insertBrand")
	 public ModelAndView insertBrand (HttpServletRequest request) {
		 ModelAndView mav = new ModelAndView();
		 HashMap<String,Object> result = es.getBrandList( request );
		 mav.addObject("brandList",(List<BrandVO>)result.get("brandList") );
		 mav.setViewName("insertBrand");
		 return mav;
	 }
	 
	 // ------------------------ 브랜드 추가 ---------------
	 @RequestMapping (value = "/insertbr", method = RequestMethod.POST)
	 public String insertbr ( @RequestParam("title") String title) {
		 
		 BrandVO bvo= new BrandVO();
		 bvo.setTitle(title);
		 
		 es.insertbr(bvo);
		 return "redirect:/insertBrand";
	 }
	 // ------------------------ 브랜드 삭제 ---------------
	 
	 @RequestMapping ("/deletebrr")
	 public String deletebr () {
		 
		 return "";
	 }
	 // 배송완료 리스트 
	 
}
