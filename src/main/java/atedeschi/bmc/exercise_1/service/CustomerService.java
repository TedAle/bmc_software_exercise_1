package atedeschi.bmc.exercise_1.service;

import org.springframework.stereotype.Service;

import atedeschi.bmc.exercise_1.model.Customer;
import atedeschi.bmc.exercise_1.model.Login;

@Service
public interface CustomerService {

  void addCustomer(Customer customer);

  Customer validateCustomer(Login login);
}
