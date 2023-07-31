package com.enough.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BrandVO {
	private int bseq;
	private String title;
	public int getBseq() {
		return bseq;
	}
	public void setBseq(int bseq) {
		this.bseq = bseq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	
}
