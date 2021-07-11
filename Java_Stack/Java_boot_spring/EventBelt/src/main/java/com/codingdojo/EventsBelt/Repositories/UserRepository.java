package com.codingdojo.EventsBelt.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.EventsBelt.Models.User;

public interface UserRepository extends CrudRepository<User, Long>{
	List<User> findAll();
	User findByEmail(String email);

}
