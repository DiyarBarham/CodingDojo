package com.codingdojo.BeltExam.Controllers;


import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.BeltExam.Models.Courses;
import com.codingdojo.BeltExam.Models.User;
import com.codingdojo.BeltExam.Models.UsersCourses;
import com.codingdojo.BeltExam.Services.AllServices;
import com.codingdojo.BeltExam.Validator.UserValidator;

@Controller
public class Contro {
	private final AllServices allservices;
	private final UserValidator userValidator;

	public Contro(AllServices allservices, UserValidator userValidator) {
		this.allservices = allservices;
		this.userValidator = userValidator;
	}

	@GetMapping("")
	public String index(@ModelAttribute("newUser") User newUser, @ModelAttribute("login") User login, Model model) {
		return "login.jsp";
	}

	@PostMapping("/")
	public String newqq(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, HttpSession session, Model model) {
		userValidator.validate(newUser, result);
        System.out.println(result);
		if (result.hasErrors()) {
			return "login.jsp";}
		User u = allservices.createuser(newUser);
		session.setAttribute("userid", u.getId());
		return "redirect:/courses";
	}

	@PostMapping("/login")
	public String loginUser(@ModelAttribute("newUser") User newUser,@RequestParam("email") String email, @RequestParam("password") String password, Model model,
			HttpSession session) {
		if(email == null || password == null) {
			model.addAttribute("error", "User name or Password is blank");
			return "login.jsp";
		}
		if (allservices.authenticateUser(email, password)) {
			Long id = (Long) allservices.findByEmail(email).getId();
			session.setAttribute("userid", id);
			return "redirect:/courses";
		}
		model.addAttribute("error", "Invalid User name or Password");
		return "login.jsp";
	}
	@GetMapping("/logout")
	public String runns(HttpSession session) {
		session.removeAttribute("userid");
		return "redirect:/";
	}
	@GetMapping("/courses")
	public String courses(Model model, HttpSession session) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		Long id = (Long) session.getAttribute("userid");
		User u = allservices.findUserById(id);
		model.addAttribute("user", u);
		model.addAttribute("courses", allservices.allcourses());
		model.addAttribute("ucs", allservices.alluserscourses());
		return "courses.jsp";
	}
	
	@GetMapping("/courses/new")
	public String neww(HttpSession session, Model model, @ModelAttribute("newCourse") Courses newCourse) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		
		return "newcourse.jsp";
	}
	@PostMapping("/courses/new")
	public String run(@Valid @ModelAttribute("newCourse") Courses newCourse, BindingResult result, HttpSession session) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		if (result.hasErrors())
			return "newcourse.jsp";
		allservices.createevent(newCourse);
		return "redirect:/courses";
	}
	@GetMapping("/join/{id}")
	public String sssasd(HttpSession session, @PathVariable("id") Long idd) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		Long id = (Long) session.getAttribute("userid");
		User u = allservices.findUserById(id);
		Courses e = allservices.findcourse(idd);
		UsersCourses us = new UsersCourses(e, u);
		allservices.addatt(us, e);
		return "redirect:/courses";
	}
	
	@GetMapping("/remove/{id}/{idd}")
	public String sssasasdd(HttpSession session, @PathVariable("id") Long id, @PathVariable("idd") Long idd) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		allservices.removeattendance(id, idd);
		return "redirect:/courses";
	}
	
	@GetMapping("/delete/{id}")
	public String sssasasddasd(HttpSession session, @PathVariable("id") Long id) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		allservices.deletecourse(id);
		return "redirect:/courses";
	}
	
	@GetMapping("/courses/{id}")
	public String ss(HttpSession session, @PathVariable("id") Long idd, Model model) {
		if (session.getAttribute("userid") == null) {
			return "redirect:/";
		}
		Long id = (Long) session.getAttribute("userid");
		User u = allservices.findUserById(id);
		model.addAttribute("user", u);
		model.addAttribute("course", allservices.findcourse(idd));
		model.addAttribute("ucs", allservices.alluserscourses());
		return "singlecourse.jsp";
	}
	
	@GetMapping("/edit/{id}")
	public String sss(HttpSession session, Model model, @ModelAttribute("editCourse") Courses editCourse, @PathVariable("id") Long idd) {
		Long id = (Long) session.getAttribute("userid");
		if (session.getAttribute("userid") == null){
			return "redirect:/";
		}
		User u = allservices.findUserById(id);
		model.addAttribute("user", u);
		
		model.addAttribute("course", allservices.findcoursebd(idd));
		return "edit.jsp";
	}
	
	@PostMapping("/edit/{id}")
	public String runnn(@Valid @ModelAttribute("editCourse") Courses editCourse, BindingResult result, HttpSession session, @PathVariable("id") Long idd) {
		if (result.hasErrors())
			return "edit.jsp";
		allservices.editcourse(editCourse, allservices.findcourse(idd));
		return "redirect:/courses/"+idd;
	}
}
