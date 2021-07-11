package com.codingdojo.EventsBelt.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.EventsBelt.Models.Events;
import com.codingdojo.EventsBelt.Models.Messages;
import com.codingdojo.EventsBelt.Models.User;
import com.codingdojo.EventsBelt.Services.AllServices;
import com.codingdojo.EventsBelt.Validator.UserValidator;

@Controller
public class Control {
	private final AllServices allservices;
	private final UserValidator userValidator;

	public Control(AllServices allservices, UserValidator userValidator) {
		this.allservices = allservices;
		this.userValidator = userValidator;
	}

	@GetMapping("")
	public String index(@ModelAttribute("newUser") User newUser, @ModelAttribute("login") User login, Model model) {
		model.addAttribute("states", allservices.allstates());
		return "login.jsp";
	}

	@PostMapping("/")
	public String newqq(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, HttpSession session, Model model) {
		userValidator.validate(newUser, result);
        System.out.println(result);
		if (result.hasErrors()) {
			model.addAttribute("states", allservices.allstates());
			return "login.jsp";}
		User u = allservices.createuser(newUser);
		session.setAttribute("userid", u.getId());
		return "redirect:/events";
	}

	@PostMapping("/login")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model,
			HttpSession session) {
		if (allservices.authenticateUser(email, password)) {
			Long id = (Long) allservices.findByEmail(email).getId();
			session.setAttribute("userid", id);
			return "redirect:/events";
		}
		model.addAttribute("error", "Invalid User name or Password");
		return "login.jsp";
	}

	@GetMapping("/events")
	public String home(HttpSession session, Model model, @ModelAttribute("newEvent") Events newEvent) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		Long id = (Long) session.getAttribute("userid");
		User u = allservices.findUserById(id);
		model.addAttribute("user", u);
		model.addAttribute("eventsnot", allservices.findeventsnotcontains(u.getStates().getName()));
		model.addAttribute("events", allservices.findeventscontains(u.getStates().getName()));
		model.addAttribute("states", allservices.allstates());
		return "events.jsp";
	}
	@PostMapping("/events")
	public String run(@Valid @ModelAttribute("newEvent") Events newEvent, BindingResult result, HttpSession session) {
		if (result.hasErrors())
			return "events.jsp";
		Long id = (Long) session.getAttribute("userid");
		allservices.createevent(newEvent, allservices.findUserById(id));
		return "redirect:/events";
	}
	
	@GetMapping("/events/{id}")
	public String ss(HttpSession session, Model model, @ModelAttribute("newMessage") Messages newMessage, @PathVariable("id") Long idd, @ModelAttribute("newEvent") Events newEvent) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		Long id = (Long) session.getAttribute("userid");
		User u = allservices.findUserById(id);
		model.addAttribute("user", u);
		model.addAttribute("event", allservices.findevent(idd));
		List<Messages> m = allservices.findevent(idd).getMessages();
		model.addAttribute("mm", m);
		return "singleEvent.jsp";
	}
	
	@PostMapping("/events/{id}")
	public String runn(@Valid @ModelAttribute("newMessage") Messages newMessage, BindingResult result, HttpSession session, @PathVariable("id") Long idd) {
		if (result.hasErrors())
			return "singleEvent.jsp";
		Long id = (Long) session.getAttribute("userid");
		allservices.createmessage(newMessage, allservices.findUserById(id), allservices.findevent(idd));
		return "redirect:/events/"+idd;
	}
	
	@GetMapping("/events/{id}/edit")
	public String sss(HttpSession session, Model model, @ModelAttribute("editEvent") Events editEvent, @PathVariable("id") Long idd, @ModelAttribute("newEvent") Events newEvent) {
		Long id = (Long) session.getAttribute("userid");
		if (session.getAttribute("userid") == null || id!=allservices.findevent(idd).getHost().getId()){
			return "redirect:/";
		}
		User u = allservices.findUserById(id);
		model.addAttribute("user", u);
		model.addAttribute("event", allservices.findevent(idd));
		model.addAttribute("states", allservices.allstates());
		return "edit.jsp";
	}
	
	@PostMapping("/events/{id}/edit")
	public String runnn(@Valid @ModelAttribute("editEvent") Events editEvent, BindingResult result, HttpSession session, @PathVariable("id") Long idd) {
		if (result.hasErrors())
			return "edit.jsp";
		Long id = (Long) session.getAttribute("userid");
		allservices.editevent(editEvent, allservices.findevent(idd));
		return "redirect:/events/"+idd+"/edit";
	}
	
	@GetMapping("/logout")
	public String runns(HttpSession session) {
		session.removeAttribute("userid");
		return "redirect:/";
	}
	
	@GetMapping("/join/{id}")
	public String sssasd(HttpSession session, @PathVariable("id") Long idd, @ModelAttribute("newEvent") Events newEvent) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		Long id = (Long) session.getAttribute("userid");
		User u = allservices.findUserById(id);
		Events e = allservices.findevent(idd);
		allservices.addattendance(u, e);
		return "redirect:/events";
	}
	
	@GetMapping("/cancel/{id}")
	public String sssasdasd(HttpSession session, @PathVariable("id") Long idd, @ModelAttribute("newEvent") Events newEvent) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		Long id = (Long) session.getAttribute("userid");
		User u = allservices.findUserById(id);
		Events e = allservices.findevent(idd);
		allservices.removeattendance(u, e);
		return "redirect:/events";
	}
	
	@GetMapping("/delete/{id}")
	public String asdsad(HttpSession session, @PathVariable("id") Long idd, @ModelAttribute("newEvent") Events newEvent) {
		Long id = (Long) session.getAttribute("userid");
		if (session.getAttribute("userid") == null || id!=allservices.findevent(idd).getHost().getId()){
			return "redirect:/";
		}

		Events e = allservices.findevent(idd);
		allservices.removeevent(e);
		return "redirect:/events";
	}
}
