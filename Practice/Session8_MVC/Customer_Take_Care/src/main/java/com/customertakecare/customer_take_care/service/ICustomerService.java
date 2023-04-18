package com.customertakecare.customer_take_care.service;

import com.customertakecare.customer_take_care.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();

    void save(Customer customer);

    Customer findById(int id);

    void update(int id, Customer customer);

    void remove(int id);

}
