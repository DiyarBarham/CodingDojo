package com.codingdojo.DojosAndNinjas.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.DojosAndNinjas.models.Dojo;
import com.codingdojo.DojosAndNinjas.models.Ninja;
import com.codingdojo.DojosAndNinjas.repositories.DojoRepository;
import com.codingdojo.DojosAndNinjas.repositories.NinjaRepository;
import com.codingdojo.DojosAndNinjas.services.DojoService;
import com.codingdojo.DojosAndNinjas.services.NinjaService;

@Controller
public class DojosControllers {
	private final DojoService dojoservise;
	private final NinjaService ninjaservise;

	public DojosControllers(DojoService dojoservise, NinjaService ninjaservise) {
		this.dojoservise = dojoservise;
		this.ninjaservise = ninjaservise;
	}

	@RequestMapping("/dojos/new")
	public String index() {
		return "newdojo.jsp";
	}

	@RequestMapping(value = "/dojos/new", method = RequestMethod.POST)
	public String newperson(@RequestParam(value = "name") String name) {
		Dojo dojo = new Dojo(name);
		dojoservise.createdojo(dojo);
		return "redirect:/dojos/new";
	}

	@RequestMapping("/ninjas/new")
	public String newlicen(Model model) {
		List<Dojo> dojos = dojoservise.alldojos();
		model.addAttribute("dojos", dojos);
		return "newninja.jsp";
	}

	@RequestMapping(value = "/ninjas/new", method = RequestMethod.POST)
	public String newlicenses(@RequestParam(value = "dojo") Long dojo, @RequestParam(value = "fname") String fname,
			@RequestParam(value = "lname") String lname, @RequestParam(value = "age") int age) {
		Dojo doj = dojoservise.finddojo(dojo);
		Ninja ninj = new Ninja(fname, lname, age, doj);
		ninjaservise.createninja(ninj);
		return "redirect:/ninjas/new";
	}

	@RequestMapping("/dojos/{id}")
	public String person(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoservise.finddojo(id);
		List<Ninja> ninjas = ninjaservise.allninjas();
		model.addAttribute("dojo", dojo);
		model.addAttribute("ninjas", ninjas);
		return "dojo.jsp";
	}
}
