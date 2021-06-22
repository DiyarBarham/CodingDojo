package com.codingdojo.Licenses.controllers;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.Licenses.models.License;
import com.codingdojo.Licenses.models.Person;
import com.codingdojo.Licenses.services.LicenseService;
import com.codingdojo.Licenses.services.PersonsService;

@Controller
public class PersonsControllers {
	private final PersonsService personsservise;
	private final LicenseService licenseservise;

	public PersonsControllers(LicenseService licenseservise, PersonsService personsservise) {
		this.personsservise = personsservise;
		this.licenseservise=licenseservise;
	}
	
	@RequestMapping("/persons/new")
	public String index() {
		return "newperson.jsp";
	}

	@RequestMapping(value = "/persons/new", method = RequestMethod.POST)
	public String newperson(@RequestParam(value = "fname") String fname,
			@RequestParam(value = "lname") String lname) {
		Person person = new Person(fname, lname);
		personsservise.createperson(person);
		return "redirect:/persons/new";
	}
	
	@RequestMapping("/licenses/new")
	public String newlicen(Model model) {
		List<Person> persons = personsservise.allpersons();
		model.addAttribute("persons", persons);
		return "newlicense.jsp";
	}
	
	@RequestMapping(value="/licenses/new", method = RequestMethod.POST)
	public String newlicenses(@RequestParam(value = "person") Long person,
			@RequestParam(value = "state") String state, @RequestParam(value = "exdate") String exdate) throws ParseException {
		Person per = personsservise.findperson(person);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
		Date date = formatter.parse(exdate);
		License m = new License(date, state, per);
		licenseservise.createlicnse(m);
		return "redirect:/licenses/new";
	}
	
	@RequestMapping("/persons/{id}")
	public String person(@PathVariable("id") Long id, Model model) {
		Person person = personsservise.findperson(id);
		model.addAttribute("person", person);
		return "person.jsp";
	}
}
