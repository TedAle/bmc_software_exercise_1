package atedeschi.bmc.exercise_1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import atedeschi.bmc.exercise_1.model.Customer;
import atedeschi.bmc.exercise_1.service.CustomerService;
import atedeschi.bmc.exercise_1.service.utils.Constants;

@Controller
public class RegistrationController {

  @Autowired
  public CustomerService customerService;

  @PostMapping(value = "/registrationProcess")
  public String addCustomer(@ModelAttribute("customer") Customer customer, ModelMap model) {
    customerService.addCustomer(customer);
    model.addAttribute(Constants.MODEL_KEY_CUSTOMER, customer.getUsername());

    return Constants.ACTION_WELCOME;
  }
}
