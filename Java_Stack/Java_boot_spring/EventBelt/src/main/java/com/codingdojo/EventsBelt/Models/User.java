package com.codingdojo.EventsBelt.Models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Size(min = 5, message = "firstname must be greater than 5 characters")
	private String firstname;
	@Size(min = 5, message = "lastname must be greater than 5 characters")
	private String lastname;
	@NotBlank
	@Email(message = "Email must be valid")
	private String email;
	@Size(min = 5, message = "Location must be greater than 5 characters")
	private String location;
	@Size(min = 5, message = "Password must be greater than 5 characters")
	private String password;
	@Size(min = 5, message = "passwordConfirmation must be greater than 5 characters")
	@Transient
	private String passwordConfirmation;
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "users_events", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "event_id"))
	private List<Events> events;

	@ManyToOne(fetch = FetchType.LAZY)
	private States states;
	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<Events> eventscreated;
	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<Messages> message;

	public User() {

	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Events> getEvents() {
		return events;
	}

	public void setEvents(List<Events> events) {
		this.events = events;
	}

	public long getId() {
		return id;
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	public List<Events> getEventscreated() {
		return eventscreated;
	}

	public void setEventscreated(List<Events> eventscreated) {
		this.eventscreated = eventscreated;
	}

	public void setStates(States states) {
		this.states = states;
	}

	public States getStates() {
		return states;
	}

	public List<Messages> getMessage() {
		return message;
	}

	public void setMessage(List<Messages> message) {
		this.message = message;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}

}
