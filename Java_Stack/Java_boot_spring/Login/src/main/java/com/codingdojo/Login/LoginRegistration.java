package com.codingdojo.Login;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginRegistration {
	@RequestMapping("")
	public String start(HttpSession session) {
		if(session.getAttribute("email") != null) {
			return "redirect:/welcome";
		}
		return "Login.jsp";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession session, @RequestParam(value = "email") String email, @RequestParam(value = "password") String pass) {
		if(email.equals("admin@admin.com") && pass.equals("admin")) {
			if(session.getAttribute("email") == null && session.getAttribute("pass") == null) {
			session.setAttribute("email", email);
			session.setAttribute("pass", pass);
			}
			return "redirect:/welcome";
		}
		return "redirect:/";
	}

	@RequestMapping("/welcome")
	public String welcome(HttpSession session) {
		if(session.getAttribute("email") != null) {
			return "welcome.jsp";
			
		}
		return "redirect:/";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		if(session.getAttribute("email") != null) {
			session.invalidate();
			
		}
		return "redirect:/";
	}

}
