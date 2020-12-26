package com.practice.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="first_name")
	@Size(min = 1, message = "required")
	@Pattern(regexp="[a-zA-z]+([ '-][a-zA-Z]+)*", message="Use just letters")
	@NotNull(message="Can't be blank")
	private String firstName;
	
	
	@Column(name="last_name")
	@Size(min = 1, message = "required")
	@Pattern(regexp="[a-zA-z]+([ '-][a-zA-Z]+)*", message="Use just letters")
	@NotNull(message="Can't be blank")
	private String lastName;
	
	
	@Column(name="number")
	@Size(min = 1, message = "required")
	@Pattern(regexp="^\\d*", message="Use just numbers")
	@NotNull(message="Can't be blank")
	private String number;
	
	@Column(name="is_deleted")
	private boolean isDeleted;
	
	// constructor
	public User() {
		
	}

	public User(String firstName, String lastName, String number) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.number = number;
	}
	
	// getter and setters - id have just getter
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	
	
	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", number=" + number
				+ ", isDeleted=" + isDeleted + "]";
	}

}
