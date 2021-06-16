package com.codingdojo.TheCode;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@SpringBootApplication
@Controller
public class TheCodeApplication {

	public static void main(String[] args) {
		SpringApplication.run(TheCodeApplication.class, args);
	}
	@RequestMapping("/")
    public String index(Model model) {
        return "index.jsp";
    }
	@RequestMapping(value="/login", method=RequestMethod.POST)
    public String login(@RequestParam(value="sec") String sec, RedirectAttributes redirectAttributes) {
		if(sec.equals("bushido")) {
			return "i.jsp";
		}
		redirectAttributes.addFlashAttribute("sec", "You must train harder!");
		return "redirect:/";
    }
}
