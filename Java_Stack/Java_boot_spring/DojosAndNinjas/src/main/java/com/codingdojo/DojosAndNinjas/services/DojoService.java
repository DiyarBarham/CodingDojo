package com.codingdojo.DojosAndNinjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.DojosAndNinjas.models.Dojo;
import com.codingdojo.DojosAndNinjas.repositories.DojoRepository;

@Service
public class DojoService {
	private final DojoRepository dojorepo;
	public DojoService(DojoRepository dojorepo) {
		this.dojorepo=dojorepo;
	}
	
	public List<Dojo> alldojos(){
		return dojorepo.findAll();
	}
	
	public Dojo createdojo(Dojo dojo) {
		return dojorepo.save(dojo);
		
	}
	public Dojo finddojo(Long id) {
		Optional<Dojo> optionaldojo = dojorepo.findById(id);
		if(optionaldojo.isPresent()) return optionaldojo.get();
		else return null;
	}
}
