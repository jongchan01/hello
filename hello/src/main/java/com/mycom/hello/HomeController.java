package com.mycom.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index() {
		return "/free/index";
	}
	
	@GetMapping("/about")
	public String about() {
		return "/free/about";
	}
	
	@GetMapping("/teashop")
	public String teashop() {
		return "/free/teashop";
	}
	
	@GetMapping("/pricing")
	public String pricing() {
		return "/free/pricing";
	}
	
	@GetMapping("/testimonies")
	public String testimonies() {
		return "/free/testimonies";
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "/free/contact";
	}

}
