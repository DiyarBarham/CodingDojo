package com.codingdojo.CodingController;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@SpringBootApplication
@RestController
public class DojoController {
	public static void main(String[] args) {
		SpringApplication.run(CodingControllerApplication.class, args);
	}
	@RequestMapping("/{a}")
	public String dojo(@PathVariable("a") String a) { // 3\
		if (a.equals("coding")) {
			return "The dojo is awesome!";
		} else if(a.equals("burbank-dojo")) {
			return "Burbank Dojo is located in Southern California";
		}else {
			return "SJ dojo is the headquarters";
		}
       
	}
}
