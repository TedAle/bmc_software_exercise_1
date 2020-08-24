package atedeschi.bmc.exercise_1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import atedeschi.bmc.exercise_1.dao.CustomerRepository;
import atedeschi.bmc.exercise_1.model.Customer;
import atedeschi.bmc.exercise_1.model.Login;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	public CustomerRepository customerRepo;

	public void addCustomer(Customer customer) {
		customerRepo.save(customer);
	}

	public Customer validateCustomer(Login login) {
		return customerRepo.findByUsername(login.getUsername()).orElseGet(null);
	}

}
