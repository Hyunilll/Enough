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
	private int quantity;
	private Timestamp indate;
	private int price;
	

	
}
