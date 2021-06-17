package com.codingdojo.NinjaGoldGame;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GoldGame {
	@RequestMapping("")
	public String home(HttpSession session) {
		return "index.jsp";
	}

	@RequestMapping(value = "/process_money", method = RequestMethod.POST)
	public String login(HttpSession session, @RequestParam(value = "Farm") String Farm) {
		if(session.getAttribute("gold") == null) {
			
			session.setAttribute("gold",0);
			}
		int x = (int) session.getAttribute("gold");
		if(Farm.equals("Farm")) {
			x+= (int)Math.floor((Math.random()*11)+10);
		} else if(Farm.equals("Cave")) {
			x+= (int)Math.floor((Math.random()*6)+5);
		} else if(Farm.equals("House")) {
			x+= (int)Math.floor((Math.random()*4)+2);
		} else if(Farm.equals("Casino")) {
			x+= (int)Math.floor((Math.random()*101)-50);
		}
		session.setAttribute("gold", x);
			return "redirect:/";

	}
}
