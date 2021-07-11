package com.codingdojo.CanAR.Controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.CanAR.Models.Messages;
import com.codingdojo.CanAR.Services.AllService;

@Controller
public class Control {
	private final AllService allservices;

	public Control(AllService allservices) {
		this.allservices = allservices;
	}
	@GetMapping("")
	public String index(@ModelAttribute("newMessage") Messages newMessage) {
		return "home.jsp";
	}

	@PostMapping("/")
	public String newqq(@Valid @ModelAttribute("newMessage") Messages newMessage, BindingResult result) {
		allservices.createmesage(newMessage);
		return "redirect:/";
	}
	
}
