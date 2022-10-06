package com.song.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BasicController {

	@GetMapping("/")
	public String main() {
		return "main";
	}
	
	@GetMapping("/img1")
	public String img1() {
		return "/indexx";
	}
}
