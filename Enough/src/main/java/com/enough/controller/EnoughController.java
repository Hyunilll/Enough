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
	
	// --------------재고리스트로 이동---------------------
	@RequestMapping("/completeList")
	public ModelAndView completeList( HttpServletRequest request
			) {
		ModelAndView mav = new ModelAndView();
		HashMap<String,Object> result = es.getproductList( request );
		mav.addObject("productList", (List<ProductVO>)result.get("productList"));
		mav.setViewName("completeList");
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
	
	
	// ---------------------------상품 주문 ------------------
	 @RequestMapping(value = "/insertpr", method = RequestMethod.POST)
	public String insertpr( 
							@RequestParam("price") int price,
							@RequestParam("quantity1") int quantity1,
							@RequestParam("name") String name,
							@RequestParam("brand") String brand
				) {
		ProductVO pvo = new ProductVO();
		pvo.setName(name);
		pvo.setBrand(brand);
		pvo.setQuantity1(quantity1);
		pvo.setPrice(price);

		es.insertpr(pvo);
		return"redirect:/";
	}
	 // ------------------------------미송 추가 ------------------------
	 
	 @RequestMapping(value= "/addpr", method = RequestMethod.POST)
	 public String addpr(@RequestParam("pseq") int pseq,
			 			 @RequestParam("quantity1") int quantity1
			 			) {
		 es.addpr(quantity1, pseq);
		 return "redirect:/";
	 }
	 
	 // --------------------------배송완료 -------------------------
	 @RequestMapping (value = "/updatepr", method = RequestMethod.POST)
	 public String updatepr( @RequestParam("pseq") int pseq,
			 				 @RequestParam("quantity2") int quantity2,
			 				 @RequestParam("quantity1") int quantity1,
			 				@RequestParam("quantity3") int quantity3
			 ) {
		 System.out.println(quantity1 + "::: quantity1");
		 System.out.println(quantity2 + "::: quantity2");
		 if ( quantity2 != 0) {
			 quantity1 = quantity1 - quantity2;
			 quantity3 = quantity3 + quantity2;
		 }
		 System.out.println(quantity1 + "::: 뺀 후의 quantity1");
		 System.out.println(quantity3 + "::: 합친 후의 quantity3");
		 es.updatepr( quantity1, quantity2 , quantity3, pseq );		 
		 return "redirect:/";
	 }
	 
	 // ------------------------- 출고완료 -------------------------------------
	 @RequestMapping ( value="/updatecompr", method= RequestMethod.POST)
	 public String updatecompr( @RequestParam("pseq") int pseq,
			 					@RequestParam("quantity3") int quantity3
			 					) {
		 
		 es.updatecompr( quantity3, pseq);
		 return "redirect:/completeList";
	 }
	 
	 // -------------------------- 상품 삭제 --------------------
	
	 @RequestMapping ("/deletepr")
	 public String deletepr ( 
			 				  @RequestParam("pseq") int pseq
			 				) {
		 es.deletepr(pseq);
		 // System.out.println(pseq);
		 return "redirect:/";
	 }
	 
	 
	 
	 //####################브랜드#################################
	 
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
	 
	 @RequestMapping ("/deletebr")
	 public String deletebr ( @RequestParam("bseq") int bseq
			 				) {
		 es.deletebr(bseq);
		 return "redirect:/insertBrand";
	 }
	 // 배송완료 리스트 
	 
}
