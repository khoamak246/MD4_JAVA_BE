package com.transaction.jdbc_transaction_commit_rollback.service;

import com.transaction.jdbc_transaction_commit_rollback.model.User;

import java.util.List;

public interface IUserService {
    List<User> selectAllUsers();
    void addUserTransaction(User user, int[] permision);

}
