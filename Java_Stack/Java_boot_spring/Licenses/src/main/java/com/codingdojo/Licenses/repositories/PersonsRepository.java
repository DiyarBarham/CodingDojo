package com.codingdojo.Licenses.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.codingdojo.Licenses.models.Person;

public interface PersonsRepository extends CrudRepository<Person, Long>{
	List<Person> findAll();
}
