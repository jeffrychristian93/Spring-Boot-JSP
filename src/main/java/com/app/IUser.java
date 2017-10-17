package com.app;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface IUser extends CrudRepository<User, Long> {

    @Query("select u from User u where u.name like CONCAT('%',?1,'%') AND u.surname like CONCAT('%',?2,'%')")
    public Iterable<User> find(String name, String surename);

}
