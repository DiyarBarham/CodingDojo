package com.codingdojo.DojosAndNinjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.DojosAndNinjas.models.Ninja;
import com.codingdojo.DojosAndNinjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository ninjarepo;
	public NinjaService(NinjaRepository ninjarepo) {
		this.ninjarepo=ninjarepo;
	}
	
	public List<Ninja> allninjas(){
		return ninjarepo.findAll();
	}
	
	public Ninja createninja(Ninja ninja) {
		return ninjarepo.save(ninja);
		
	}
	public Ninja findninja(Long id) {
		Optional<Ninja> optionalninja = ninjarepo.findById(id);
		if(optionalninja.isPresent()) return optionalninja.get();
		else return null;
	}
}
