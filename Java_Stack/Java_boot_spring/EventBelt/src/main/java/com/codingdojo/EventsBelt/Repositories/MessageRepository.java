package com.codingdojo.EventsBelt.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.EventsBelt.Models.Messages;

public interface MessageRepository extends CrudRepository<Messages, Long>{
	List<Messages> findAll();

}
