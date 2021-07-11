package com.codingdojo.EventsBelt.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.EventsBelt.Models.Events;
import com.codingdojo.EventsBelt.Models.States;

public interface EventRepository extends CrudRepository<Events, Long>{
	List<Events> findAll();
	List<Events> findByStatesNameNotContains(String s);
	List<Events> findByStatesNameContains(String s);
}
