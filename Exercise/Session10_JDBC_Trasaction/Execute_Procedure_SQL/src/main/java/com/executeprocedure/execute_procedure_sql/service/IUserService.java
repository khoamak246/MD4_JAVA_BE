package com.executeprocedure.execute_procedure_sql.service;

import com.executeprocedure.execute_procedure_sql.model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
    void save(User user);
    void update(User user);
    void deleteById(int id);
    User getUserById(int id);
}
