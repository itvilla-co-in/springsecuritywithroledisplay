package com.itvilla.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/mylogin")
	public String showMyLoginPage() {
		
		return "login";
		
	}
}
