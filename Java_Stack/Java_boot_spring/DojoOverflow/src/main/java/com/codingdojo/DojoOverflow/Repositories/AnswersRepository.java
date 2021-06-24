package com.codingdojo.DojoOverflow.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.DojoOverflow.models.Answers;

public interface AnswersRepository extends CrudRepository<Answers, Long>{
	List<Answers> findAll();
}
