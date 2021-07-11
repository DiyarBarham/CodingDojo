package com.codingdojo.EventsBelt.Services;

import java.util.List;

import java.util.Optional;

import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.codingdojo.EventsBelt.Models.Events;
import com.codingdojo.EventsBelt.Models.Messages;
import com.codingdojo.EventsBelt.Models.States;
import com.codingdojo.EventsBelt.Models.User;
import com.codingdojo.EventsBelt.Repositories.EventRepository;
import com.codingdojo.EventsBelt.Repositories.MessageRepository;
import com.codingdojo.EventsBelt.Repositories.StateRepository;
import com.codingdojo.EventsBelt.Repositories.UserRepository;

@Service
public class AllServices {
	private final UserRepository userrepo;
	private final MessageRepository messagerepo;
	private final StateRepository staterepo;
	private final EventRepository eventrepo;
	public AllServices(UserRepository userrepo, MessageRepository messagerepo, StateRepository staterepo, EventRepository eventrepo) {
		this.userrepo=userrepo;
		this.messagerepo=messagerepo;
		this.staterepo=staterepo;
		this.eventrepo=eventrepo;
	}
	
	public List<User> allusers(){
		return userrepo.findAll();
	}
	
	public User createuser(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
		return userrepo.save(user);
		
	}
	public User finduser(Long id) {
		Optional<User> optionaluser= userrepo.findById(id);
		if(optionaluser.isPresent()) return optionaluser.get();
		else return null;
	}
	
	public List<Messages> allmessages(){
		return messagerepo.findAll();
	}
	
	public Messages createmessage(Messages message, User user, Events events) {
		message.setUser(user);
		message.setEvent(events);
		return messagerepo.save(message);
		
	}
	public Messages findmessage(Long id) {
		Optional<Messages> optionalmessage= messagerepo.findById(id);
		if(optionalmessage.isPresent()) return optionalmessage.get();
		else return null;
	}
	
	public List<Events> allevents(){
		return eventrepo.findAll();
	}
	
	public Events createevent(Events event, User host) {
		event.setHost(host);
		return eventrepo.save(event);
		
	}
	public Events findevent(Long id) {
		Optional<Events> optionalevent= eventrepo.findById(id);
		if(optionalevent.isPresent()) return optionalevent.get();
		else return null;
	}
	
	public List<States> allstates(){
		return staterepo.findAll();
	}
	
	public States findstate(Long id) {
		Optional<States> optionalstate= staterepo.findById(id);
		if(optionalstate.isPresent()) return optionalstate.get();
		else return null;
	}
	public boolean authenticateUser(String email, String password) {
        // first find the user by email
        User user = userrepo.findByEmail(email);
        // if we can't find it by email, return false
        if(user == null) {
            return false;
        } else {
            if(BCrypt.checkpw(password, user.getPassword())) {
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
    	
    	if(u.isPresent()) {
            return u.get();
    	} else {
    	    return null;
    	}
    }
	public List<Events> findeventsnotcontains(String s){
		return eventrepo.findByStatesNameNotContains(s);
	}
	public List<Events> findeventscontains(String s){
		return eventrepo.findByStatesNameContains(s);
	}

	public void editevent(@Valid Events editEvent, Events findevent) {
		// TODO Auto-generated method stub
		findevent.setName(editEvent.getName());
		findevent.setLocation(editEvent.getLocation());
		findevent.setStates(editEvent.getStates());
		if(editEvent.getDate() != null) {
			findevent.setDate(editEvent.getDate());
		}
		eventrepo.save(findevent);
		
	}

	public void addattendance(User u, Events e) {
		// TODO Auto-generated method stub
		e.addUsers(u);
		eventrepo.save(e);
	}

	public void removeattendance(User u, Events e) {
		// TODO Auto-generated method stub
		e.removeUsers(u);
		eventrepo.save(e);
		
	}

	public void removeevent(Events e) {
		if(e != null) {
			System.out.println("Iam here");
			eventrepo.delete(e);
			
		}
		else {
			System.out.println(false);
		}
		
	}
}
