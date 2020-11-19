package com.psl.practise;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/test")
public class Test {
		
	@RequestMapping("/showForm")
	public String showForm() {
		
		return "show-page";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@RequestParam("studentName")String theName,
								Model model) {
		
		theName = theName.toUpperCase();
		String result = "yo!" + theName;
		model.addAttribute("message", result);
		return "processedForm";
	}

}
