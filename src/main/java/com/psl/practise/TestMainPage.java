package com.psl.practise;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestMainPage {

	@RequestMapping("/mainPage")
	public String add()
	{
		System.out.println("added");
		return "main-page";
	}
}
