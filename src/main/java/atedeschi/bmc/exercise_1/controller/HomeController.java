package atedeschi.bmc.exercise_1.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import atedeschi.bmc.exercise_1.model.Customer;
import atedeschi.bmc.exercise_1.model.Login;
import atedeschi.bmc.exercise_1.service.CustomerService;
import atedeschi.bmc.exercise_1.service.utils.Constants;

@Controller
public class HomeController {

  @Autowired
  public CustomerService customerService;

  @GetMapping("/")
  public String home(Map<String, Object> map) {
    return Constants.ACTION_HOME;
  }

  @GetMapping("/showLoginPage")
  public String showLoginPage(ModelMap model) {
    model.addAttribute(new Login());

    return Constants.ACTION_LOGIN;
  }

  @GetMapping("/showRegistrationPage")
  public String showRegistrationPage(ModelMap model) {
    model.addAttribute(new Customer());

    return Constants.ACTION_REGISTRATION;
  }

}
