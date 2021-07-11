package com.codingdojo.EventsBelt.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.EventsBelt.Models.States;

public interface StateRepository extends CrudRepository<States, Long>{
	List<States> findAll();

}
