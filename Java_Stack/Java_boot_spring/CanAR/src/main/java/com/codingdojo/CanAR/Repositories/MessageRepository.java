package com.codingdojo.CanAR.Repositories;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.CanAR.Models.Messages;

public interface MessageRepository extends CrudRepository<Messages, Long>{

}
