package com.codingdojo.DojoSurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DojoSurvey {
	@RequestMapping("")
	public String home(HttpSession session) {
		return "index.jsp";
	}

	@RequestMapping(value = "/render", method = RequestMethod.POST)
	public String login(HttpSession session, @RequestParam(value = "name") String name,
			@RequestParam(value = "location") String location, @RequestParam(value = "favlang") String favlang,
			@RequestParam(value = "comment") String comment) {
		if(session.getAttribute("location") == null && session.getAttribute("name") == null
				&& session.getAttribute("favlang") == null) {
			session.setAttribute("name", name);
			session.setAttribute("location", location);
			session.setAttribute("favlang", favlang);
			session.setAttribute("comment", comment);
			return "redirect:/result";
			}
		return "redirect:/";
		
		
	}

	@RequestMapping("/result")
	public String result(HttpSession session) {
		if (session.getAttribute("location") != null && session.getAttribute("name") != null
				&& session.getAttribute("favlang") != null) {
			return "print.jsp";

		}
		return "redirect:/";
	}
}
