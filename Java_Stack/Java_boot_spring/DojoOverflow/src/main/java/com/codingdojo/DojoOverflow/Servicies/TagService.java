package com.codingdojo.DojoOverflow.Servicies;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.DojoOverflow.Repositories.TagsRepository;
import com.codingdojo.DojoOverflow.models.Answers;
import com.codingdojo.DojoOverflow.models.Questions;
import com.codingdojo.DojoOverflow.models.Tags;

@Service
public class TagService {
	private final TagsRepository tagrepo;
	public TagService(TagsRepository tagrepo) {
		this.tagrepo=tagrepo;
	}
	
	public List<Tags> alltags(){
		return tagrepo.findAll();
	}
	
	public Tags createtag(Tags tag) {
		return tagrepo.save(tag);
		
	}
	public Tags findtag(Long id) {
		Optional<Tags> optionaltag= tagrepo.findById(id);
		if(optionaltag.isPresent()) return optionaltag.get();
		else return null;
	}
	public Tags findtagbysub(String ss) {
		Optional<Tags> optionaltag= tagrepo.findBySubject(ss);
		if(optionaltag.isPresent()) return optionaltag.get();
		else return null;
	}
}
