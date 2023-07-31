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
	public String insertProduct() {
		return "insertProduct";
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
		pvo.setPrice(price);
		pvo.setQuantity(quantity);
		pvo.setName(name);
		pvo.setBrand(brand);
		System.out.println(price); 
		System.out.println(pvo.getPrice() + ": price"); 
		System.out.println(quantity); 
		System.out.println(name); 
		System.out.println(pvo.getName() + ": name");
		System.out.println(pvo.getBrand() + ": brand");
		es.insertpr(pvo);
		return"redirect:/";
	}

	
		
}
