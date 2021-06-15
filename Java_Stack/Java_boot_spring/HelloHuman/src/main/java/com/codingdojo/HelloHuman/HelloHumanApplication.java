package com.codingdojo.HelloHuman;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
@SpringBootApplication
@RestController
public class HelloHumanApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloHumanApplication.class, args);
	}
	@RequestMapping("/")
    public String index(@RequestParam(value="q", required=false, defaultValue = "Human") String searchQuery, @RequestParam(value="a", required=false, defaultValue = "Human") String search) {

        return "Hello " + searchQuery+" "+search+"!";
    }
}
