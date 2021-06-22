package com.codingdojo.Licenses.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.Licenses.models.License;


public interface LicensesRepository extends CrudRepository<License, Long>{
	List<License> findAll();

}
