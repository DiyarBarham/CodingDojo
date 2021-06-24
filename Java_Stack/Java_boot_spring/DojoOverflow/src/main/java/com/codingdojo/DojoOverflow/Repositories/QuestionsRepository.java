package com.codingdojo.DojoOverflow.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.DojoOverflow.models.Questions;

public interface QuestionsRepository extends CrudRepository<Questions, Long>{
	List<Questions> findAll();
}

