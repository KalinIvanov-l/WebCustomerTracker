package com.luv2code.springdemo.service;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.util.SortUtils;

import java.util.List;

/**
 *
 * @author kalin
 */
public interface CustomerService {
    public List<Customer> getCustomers();
    public void saveCustomer(Customer theCustomer);
    public Customer getCustomer(int theId);
    public void deleteCustomer(int theId);

}
