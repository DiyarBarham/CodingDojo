package com.codingdojo.DisplayDate;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
@Controller
public class DisplayDateApplication {

	public static void main(String[] args) {
		SpringApplication.run(DisplayDateApplication.class, args);
	}
	@RequestMapping("/")
    public String index(Model model) {
        return "index.jsp";
    }
	@RequestMapping("/date")
    public String ss(Model model) {
		  Date currentDate = new Date();
		  SimpleDateFormat dateFormat= new SimpleDateFormat("dd/MMM/yyyy");
		  String dateOnly = dateFormat.format(currentDate);
		model.addAttribute("date", dateOnly);
        return "date.jsp";
    }
	@RequestMapping("/time")
    public String sss(Model model) {
		model.addAttribute("date", java.time.LocalTime.now());
        return "time.jsp";
    }

}
