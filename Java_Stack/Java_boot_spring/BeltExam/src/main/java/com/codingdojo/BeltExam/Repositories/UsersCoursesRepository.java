package com.codingdojo.BeltExam.Repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.BeltExam.Models.Courses;
import com.codingdojo.BeltExam.Models.User;
import com.codingdojo.BeltExam.Models.UsersCourses;

public interface UsersCoursesRepository extends CrudRepository<UsersCourses, Long>{
	List<UsersCourses> findAll();

	Optional<UsersCourses> findByUserAndCourse(User u, Courses e);
}
