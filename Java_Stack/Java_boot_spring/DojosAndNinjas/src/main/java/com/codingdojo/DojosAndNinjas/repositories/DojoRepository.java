package com.codingdojo.DojosAndNinjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.DojosAndNinjas.models.Dojo;


public interface DojoRepository extends CrudRepository<Dojo, Long>{
	List<Dojo> findAll();
}
