package com.enough.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.enough.service.EnoughService;

@Controller
public class EnoughController {

	@Autowired
	EnoughService es;
	
}
