package com.psl.practise;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class TestStudentController {

	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		
		TestStudent theStudent = new TestStudent();
		theModel.addAttribute("student", theStudent);
		
		return "student-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("student") TestStudent theStudent
								,BindingResult theBindingResult) {
		
		System.out.println("student is : "+theStudent.getFirstName());
		if(theBindingResult.hasErrors()) {
		return "student-form";
		}
		else {
			return "student-confirmation";
		}
	}
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditior = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditior);
	}
}
