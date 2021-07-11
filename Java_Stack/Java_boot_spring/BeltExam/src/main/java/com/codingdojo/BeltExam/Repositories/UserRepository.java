package com.codingdojo.BeltExam.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.BeltExam.Models.User;


public interface UserRepository extends CrudRepository<User, Long>{
	List<User> findAll();
	User findByEmail(String email);
}
