package com.codingdojo.CodingController;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@SpringBootApplication
@RestController
@RequestMapping("/coding")
public class CodingControllerApplication {

	public static void main(String[] args) {
		SpringApplication.run(CodingControllerApplication.class, args);
	}
	@RequestMapping("")
    // 3. Method that maps to the request route above
    public String dojo() { // 3
            return "Hello Coding Dojo!";
    }
	@RequestMapping("/python")
    // 3. Method that maps to the request route above
    public String python() { // 3
            return "Python/Django was awesome!";
    }
	@RequestMapping("/java")
    // 3. Method that maps to the request route above
    public String java() { // 3
            return "Java/Spring is better!";
    }

}
