package com.enough.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	
	private int pseq;
	private String name;
	private String brand;
	private int quantity1;
	private int quantity2;
	private int quantity3;
	private int quantity4;
	private Timestamp indate;
	private int price;
	
	public int getQuantity4() {
		return quantity4;
	}
	public void setQuantity4(int quantity4) {
		this.quantity4 = quantity4;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getQuantity1() {
		return quantity1;
	}
	public void setQuantity1(int quantity1) {
		this.quantity1 = quantity1;
	}
	public int getQuantity2() {
		return quantity2;
	}
	public void setQuantity2(int quantity2) {
		this.quantity2 = quantity2;
	}
	public int getQuantity3() {
		return quantity3;
	}
	public void setQuantity3(int quantity3) {
		this.quantity3 = quantity3;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	

	
}
