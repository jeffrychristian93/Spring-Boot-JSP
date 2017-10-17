package com.app;

public interface IUserService {

	   public Iterable<User> listAllUsers();

	   public User getUserById(long id);

	   public User saveUser(User user);
	    
	   public void deleteUser(long id);

	   public Iterable<User> find(String name, String surename);
}
