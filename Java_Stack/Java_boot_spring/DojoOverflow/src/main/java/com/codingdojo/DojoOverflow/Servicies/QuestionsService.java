package com.codingdojo.DojoOverflow.Servicies;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.DojoOverflow.Repositories.QuestionsRepository;
import com.codingdojo.DojoOverflow.Repositories.TagsRepository;
import com.codingdojo.DojoOverflow.models.Answers;
import com.codingdojo.DojoOverflow.models.Newq;
import com.codingdojo.DojoOverflow.models.Questions;
import com.codingdojo.DojoOverflow.models.Tags;

@Service
public class QuestionsService {
	private final QuestionsRepository questionrepo;
	private final TagsRepository tagpero;
	private final TagService tagser;
	public QuestionsService(QuestionsRepository questionrepo, TagsRepository tagpero, TagService tagser) {
		this.questionrepo=questionrepo;
		this.tagpero=tagpero;
		this.tagser=tagser;
	}
	
	public List<Questions> allquestions(){
		return questionrepo.findAll();
	}
	
	public Questions createquestion(Newq question) {
		List<Tags> questionsTags = new ArrayList<Tags>();
		for(String t: question.splitTags()) {
			Tags tag = this.tagser.findtagbysub(t);
			if(tag == null) {
				tag = new Tags(t);
				this.tagpero.save(tag);
			}
			if(!questionsTags.contains(tag))
				questionsTags.add(tag);
		}
		Questions newQuestion = new Questions(question.getQuestion(), questionsTags);
		return questionrepo.save(newQuestion);
		
	}
	public Questions findquestion(Long id) {
		Optional<Questions> optionalquestion= questionrepo.findById(id);
		if(optionalquestion.isPresent()) return optionalquestion.get();
		else return null;
	}

	public void change(Questions question, Answers answer) {
		List<Answers> catlist = question.getAnswers();
		catlist.add(answer);
		question.setAnswers(catlist);
		questionrepo.save(question);
		
	}

}
