package com.codingdojo.Counter;

import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;

@SpringBootApplication
@Controller
public class CounterApplication {

	public static void main(String[] args) {
		SpringApplication.run(CounterApplication.class, args);
	}
	@RequestMapping("/your_server")
    public String index(HttpSession session) {
		if (null == session.getAttribute("count")) {
			session.setAttribute("count", 0);
		} else {
			Integer count = (Integer) session.getAttribute("count");
			count++;
			session.setAttribute("count", count);
		}
        return "index.jsp";
    }
	@RequestMapping("/counter")
	public String i(HttpSession session) {
		if (null == session.getAttribute("count")) {
			session.setAttribute("count", 0);
		}
        return "i.jsp";
    }
	@RequestMapping("/counters")
	public String in(HttpSession session) {
		if (null == session.getAttribute("count")) {
			session.setAttribute("count", 2);
		} else {
			Integer count = (Integer) session.getAttribute("count");
			count+=2;
			session.setAttribute("count", count);
		}
        return "in.jsp";
    }
	@RequestMapping("/delete")
	public String delelte(HttpSession session) {
		if (null != session.getAttribute("count")) {
			session.removeAttribute("count");
		} 
        return "redirect:/counter";
    }


}
