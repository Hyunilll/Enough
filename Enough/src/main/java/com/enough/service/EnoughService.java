package com.enough.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enough.dao.IEnoughDao;

@Service
public class EnoughService {
	
	@Autowired
	IEnoughDao edao;
}
