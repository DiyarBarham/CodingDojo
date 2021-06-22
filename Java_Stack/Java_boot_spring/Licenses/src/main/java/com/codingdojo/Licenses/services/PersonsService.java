package com.codingdojo.Licenses.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.Licenses.models.Person;
import com.codingdojo.Licenses.repositories.PersonsRepository;

@Service
public class PersonsService {
	private final PersonsRepository personsrepo;
	public PersonsService(PersonsRepository personsrepo) {
		this.personsrepo=personsrepo;
	}
	
	public List<Person> allpersons(){
		return personsrepo.findAll();
	}
	
	public Person createperson(Person person) {
		return personsrepo.save(person);
		
	}
	public Person findperson(Long id) {
		Optional<Person> optionalperson = personsrepo.findById(id);
		if(optionalperson.isPresent()) return optionalperson.get();
		else return null;
	}

	
}
