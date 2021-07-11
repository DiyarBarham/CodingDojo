package com.codingdojo.EventsBelt.Validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.codingdojo.EventsBelt.Models.User;

@Component
public class UserValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }
    
    // 2
	@Override
    public void validate(Object target, Errors errors) {
        User newUser = (User) target;
        if (!newUser.getPasswordConfirmation().equals(newUser.getPassword())) {
            // 3
            errors.rejectValue("passwordConfirmation", "Match");
            System.out.println(errors);
        }         
    }


}
