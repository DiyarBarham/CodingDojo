package com.codingdojo.DojoOverflow.Servicies;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.DojoOverflow.Repositories.AnswersRepository;
import com.codingdojo.DojoOverflow.models.Answers;
import com.codingdojo.DojoOverflow.models.Questions;

@Service
public class AnswersService {
	private final AnswersRepository answersrepo;
	public AnswersService(AnswersRepository answersrepo) {
		this.answersrepo=answersrepo;
	}
	
	public List<Answers> allanswers(){
		return answersrepo.findAll();
	}
	
	public Answers createanswer(Answers answer) {
		return answersrepo.save(answer);
		
	}
	public Answers findanswer(Long id) {
		Optional<Answers> optionalanswer= answersrepo.findById(id);
		if(optionalanswer.isPresent()) return optionalanswer.get();
		else return null;
	}

	public void createproduct(Answers answer, Questions question) {
		// TODO Auto-generated method stub
		question.addanswer(answer);
		
	}


}
