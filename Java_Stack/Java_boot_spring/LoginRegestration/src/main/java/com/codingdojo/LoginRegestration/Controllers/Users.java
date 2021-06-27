package com.codingdojo.LoginRegestration.Controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.codingdojo.LoginRegestration.Services.UserService;
import com.codingdojo.LoginRegestration.Valedation.UserValidator;
import com.codingdojo.LoginRegestration.models.User;

@Controller
public class Users {
    private final UserService userService;
    private final UserValidator userValidator;
    
    public Users(UserService userService, UserValidator userValidator) {
        this.userService = userService;
        this.userValidator=userValidator;
    }
    
    @RequestMapping("/registration")
    public String registerForm(@ModelAttribute("user") User user) {
        return "registrationPage.jsp";
    }
    @RequestMapping("/login")
    public String login() {
        return "loginPage.jsp";
    }
    
    @RequestMapping(value="/registration", method=RequestMethod.POST)
    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
    	userValidator.validate(user, result);
    	if(result.hasErrors()) {
        	return "redirect:/registration";
        }
        User u = userService.registerUser(user);
        session.setAttribute("userid", u.getId());
        return "redirect:/home";
    }
    
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session) {
    	if(userService.authenticateUser(email, password)) {
    		Long id = (Long) userService.findByEmail(email).getId();
    		session.setAttribute("userid", id);
    		return "redirect:/home";
    	}
    	model.addAttribute("error", "Invalid User name or Password");
    	return "redirect:/login";
    }
    
    @RequestMapping("/home")
    public String home(HttpSession session, Model model) {
    	if (session.getAttribute("userid") == null) {
    		return "redirect:/login";
    	}
        Long id = (Long) session.getAttribute("userid");
        model.addAttribute("user", userService.findUserById(id));
        return "homePage.jsp";
        
    }
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        // invalidate session
        // redirect to login page
    	session.removeAttribute("userid");
    	return "redirect:/login";
    }
}