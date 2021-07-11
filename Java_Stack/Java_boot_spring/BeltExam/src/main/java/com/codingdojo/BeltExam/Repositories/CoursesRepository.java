package com.codingdojo.BeltExam.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.BeltExam.Models.Courses;

	
public interface CoursesRepository extends CrudRepository<Courses, Long>{
	List<Courses> findAll();
}
