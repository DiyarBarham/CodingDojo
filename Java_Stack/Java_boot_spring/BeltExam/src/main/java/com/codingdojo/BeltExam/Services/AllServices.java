package com.codingdojo.BeltExam.Services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.codingdojo.BeltExam.Models.Courses;
import com.codingdojo.BeltExam.Models.User;
import com.codingdojo.BeltExam.Models.UsersCourses;
import com.codingdojo.BeltExam.Repositories.CoursesRepository;
import com.codingdojo.BeltExam.Repositories.UserRepository;
import com.codingdojo.BeltExam.Repositories.UsersCoursesRepository;

@Service
public class AllServices {
	private final UserRepository userrepo;
	private final CoursesRepository courserepo;
	private final UsersCoursesRepository ucrepo;
	public AllServices(UserRepository userrepo, CoursesRepository courserepo, UsersCoursesRepository ucrepo) {
		this.userrepo = userrepo;
		this.courserepo = courserepo;
		this.ucrepo=ucrepo;
	}

	public List<User> allusers() {
		return userrepo.findAll();
	}

	public User createuser(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
		return userrepo.save(user);

	}

	public User finduser(Long id) {
		Optional<User> optionaluser = userrepo.findById(id);
		if (optionaluser.isPresent())
			return optionaluser.get();
		else
			return null;
	}

	public boolean authenticateUser(String email, String password) {
		// first find the user by email

		User user = userrepo.findByEmail(email);
		// if we can't find it by email, return false
		if (user == null) {
			return false;
		} else {
			if (BCrypt.checkpw(password, user.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
	}

	public User findByEmail(String email) {
		return userrepo.findByEmail(email);
	}

	public User findUserById(Long id) {
		Optional<User> u = userrepo.findById(id);

		if (u.isPresent()) {
			return u.get();
		} else {
			return null;
		}
	}

	public List<Courses> allcourses() {
		return courserepo.findAll();
	}

	public Courses createcourse(Courses event, User host) {
		event.setHost(host);
		return courserepo.save(event);

	}

	public Courses findcourse(Long id) {
		Optional<Courses> optionalcourse = courserepo.findById(id);
		if (optionalcourse.isPresent())
			return optionalcourse.get();
		else
			return null;
	}
	public void editcourse(@Valid Courses editcourse, Courses findcourse) {
		// TODO Auto-generated method stub
		findcourse.setName(editcourse.getName());
		findcourse.setInstructor(editcourse.getInstructor());
		findcourse.setCapacity(editcourse.getCapacity());
		courserepo.save(findcourse);
		
	}
	
	public void addatt(UsersCourses u, Courses e) {
		ucrepo.save(u);
		e.counters();
	}
	public int addutoc(Courses c) {
		int i = 0;
		List<UsersCourses> u = ucrepo.findAll();
		for(int x=0; x<u.size(); x++) {
			if (u.get(x).getCourse() == c) {
				i++;
			}
		}
		return i;
	}

	public void removeattendance(Long u, Long id) {
		// TODO Auto-generated method stub
		Optional<Courses> c= courserepo.findById(id);
		if(c.isPresent()) {
			c.get().minCurrent();
		}
		ucrepo.deleteById(u);
		
	}

	public void removeevent(Courses e) {
		if(e != null) {
			courserepo.delete(e);
			
		}
	}

	public void createevent(Courses newCourse) {
		// TODO Auto-generated method stub
		courserepo.save(newCourse);
	}
	public List<UsersCourses> alluserscourses() {
		return ucrepo.findAll();
	}

	public Optional<UsersCourses> findusercourse(Long id) {
		// TODO Auto-generated method stub
		return ucrepo.findById(id);
	}

	public void deletecourse(Long id) {
		// TODO Auto-generated method stub
		courserepo.deleteById(id);
	}

	public Courses findcoursebd(Long idd) {
		// TODO Auto-generated method stub
		Optional<Courses> u = courserepo.findById(idd);
		if (u.isPresent())
		return u.get();
		else return null;
	}
}
