package com.codingdojo.DojoOverflow.Repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.DojoOverflow.models.Tags;

public interface TagsRepository extends CrudRepository<Tags, Long>{
	List<Tags> findAll();

	Optional<Tags> findBySubject(String ss);
}
