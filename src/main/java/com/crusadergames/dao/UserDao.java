package com.crusadergames.dao;

import com.crusadergames.model.RegisterUserDto;
import com.crusadergames.model.User;

import java.util.List;

public interface UserDao {

    List<User> getUsers();

    User getUserById(int id);

    User getUserByUsername(String username);

    User createUser(RegisterUserDto user);
}
