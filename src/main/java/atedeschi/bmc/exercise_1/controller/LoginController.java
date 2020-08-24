package atedeschi.bmc.exercise_1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import atedeschi.bmc.exercise_1.model.Customer;
import atedeschi.bmc.exercise_1.model.Login;
import atedeschi.bmc.exercise_1.service.CustomerService;
import atedeschi.bmc.exercise_1.service.utils.Constants;

@Controller
public class LoginController {

  @Autowired
  public CustomerService customerService;

  @PostMapping(value = "/loginProcess")
  public String login(@ModelAttribute("login") Login login, BindingResult bindingResult, ModelMap model) {

    Customer customer = customerService.validateCustomer(login);

    boolean isValidCustomer = false;

    if (null != customer && customer.getUsername().equals(login.getUsername())
        && customer.getPassword().equals(login.getPassword())) {
      isValidCustomer = true;
      model.addAttribute(Constants.MODEL_KEY_USERNAME, customer.getUsername());
    }

    return isValidCustomer ? Constants.ACTION_WELCOME : Constants.ACTION_LOGIN;
  }
}
