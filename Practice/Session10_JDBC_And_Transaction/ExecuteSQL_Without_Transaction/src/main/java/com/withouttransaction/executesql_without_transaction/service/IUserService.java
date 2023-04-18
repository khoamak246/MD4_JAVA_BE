package com.withouttransaction.executesql_without_transaction.service;

import com.withouttransaction.executesql_without_transaction.Model.User;

import java.util.List;

public interface IUserService {
    List<User> selectAllUsers();
    void insertUpdateWithoutTransaction();
}
