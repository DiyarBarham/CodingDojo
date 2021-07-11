package com.codingdojo.EventsBeltReviewer.models;


@Entity
@Table(="users")
public class Users {
	@Id
	@GenarateValue(strategy = GenerationType.IDENTITY);
	private long id;
}
