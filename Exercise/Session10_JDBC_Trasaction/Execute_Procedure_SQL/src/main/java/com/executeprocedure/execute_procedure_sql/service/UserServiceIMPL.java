package com.executeprocedure.execute_procedure_sql.service;

import com.executeprocedure.execute_procedure_sql.model.User;
import com.sun.org.apache.xalan.internal.xsltc.dom.CurrentNodeListFilter;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserServiceIMPL implements IUserService {
    private static final String username = "root";
    private static final String password = "ngochan3124";
    private static final String url = "jdbc:mysql://localhost:3306/users";

    private Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return conn;
    }

    @Override
    public List<User> findAll() {
        String query = "{CALL get_all_user()}";
        Connection conn = null;
        List<User> users = new ArrayList<>();
        try {
            conn = getConnection();
            CallableStatement callableStatement = conn.prepareCall(query);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String email = rs.getString("email");
                String phoneNumber = rs.getString("phoneNumber");
                User newUser = new User(id, name, age, email, phoneNumber);
                users.add(newUser);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public void save(User user) {
        String query = "{CALL insert_user(?, ?, ?, ?)}";
        Connection conn = null;
        try {
            conn = getConnection();
            CallableStatement callableStatement = conn.prepareCall(query);
            callableStatement.setString(1, user.getName());
            callableStatement.setInt(2, user.getAge());
            callableStatement.setString(3, user.getEmail());
            callableStatement.setString(4, user.getPhoneNumber());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(User user) {
        String query = "{CALL update_user(?, ?, ?, ?, ?)}";
        Connection conn = null;
        try {
            conn = getConnection();
            CallableStatement callableStatement = conn.prepareCall(query);
            callableStatement.setInt(1, user.getId());
            callableStatement.setString(2, user.getName());
            callableStatement.setInt(3, user.getAge());
            callableStatement.setString(4, user.getEmail());
            callableStatement.setString(5, user.getPhoneNumber());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteById(int id) {
        String query = "{CALL delete_user(?)}";
        Connection conn = null;
        try {
            conn = getConnection();
            CallableStatement callableStatement = conn.prepareCall(query);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User getUserById(int id) {
        String query = "{CALL get_user_by_id(?)}";
        User user = null;
        Connection conn = null;
        try {
            conn = getConnection();
            CallableStatement callableStatement = conn.prepareCall(query);
            callableStatement.setInt(1, id);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String email = rs.getString("email");
                String phoneNumber = rs.getString("phoneNumber");
                user = new User(id, name, age, email, phoneNumber);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
