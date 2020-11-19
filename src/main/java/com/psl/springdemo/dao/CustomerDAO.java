package com.psl.springdemo.dao;

import java.util.List;

import com.psl.springdemo.entity.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();

	void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	

	public void deleteCustomer(int theId);

}
