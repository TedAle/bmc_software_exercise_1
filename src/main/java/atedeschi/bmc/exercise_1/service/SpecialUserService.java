package atedeschi.bmc.exercise_1.service;

import org.springframework.stereotype.Service;

import atedeschi.bmc.exercise_1.model.Login;
import atedeschi.bmc.exercise_1.model.SpecialUser;

@Service
public interface SpecialUserService {
	
	public SpecialUser validateSpecialUser(Login login);

}
