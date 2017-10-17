/**
 * 
 */
package com.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class UserServiceImpl implements IUserService{

	private IUser userRepo;
	
	//Spring Setter Injection
	@Autowired
	public void setUserRepo(IUser userRepo) {
		this.userRepo = userRepo;
	}

	@Override
	public Iterable<User> listAllUsers() {
		return userRepo.findAll();
	}

	@Override
	public User getUserById(long id) {
		return userRepo.findOne(id);
	}

	@Override
	public User saveUser(User user) {
		return userRepo.save(user);
	}
	
	@Override
	public void deleteUser(long id) {
		
		 userRepo.delete(id);
		
	}

	@Override
	public Iterable<User> find(String name, String surename) {
		return userRepo.find(name, surename);
	}


}
