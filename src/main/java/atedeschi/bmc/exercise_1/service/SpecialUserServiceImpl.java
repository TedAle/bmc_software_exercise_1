package atedeschi.bmc.exercise_1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import atedeschi.bmc.exercise_1.dao.SpecialUserRepository;
import atedeschi.bmc.exercise_1.model.Login;
import atedeschi.bmc.exercise_1.model.SpecialUser;

@Service
public class SpecialUserServiceImpl implements SpecialUserService {

	@Autowired
	public SpecialUserRepository specialUserRepository;


	public SpecialUser validateSpecialUser(Login login) {
		return specialUserRepository.findByUsername(login.getUsername()).orElseGet(null);
	}

}
