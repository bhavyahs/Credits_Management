package com.dao;

import com.model.User;

import java.util.List;

public interface OperationsDAO {

    List<User> getAllUsers();

    List<User> getUser(String fullName);

    int updateTransaction(String from, String to, long credit);

    int updateFromUser(String from, long credit);

    int updateToUser(String to, long credit);

}
