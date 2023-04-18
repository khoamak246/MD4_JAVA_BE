package com.withtransaction.executesql_with_transaction.service;

import com.withtransaction.executesql_with_transaction.model.User;

import java.util.List;

public interface IUserService {
    List<User> selectAllUsers();
    void addUserTransaction(User user, int[] permision);
    void insertUpdateWithoutTransaction();
}
