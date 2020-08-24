package atedeschi.bmc.exercise_1.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import atedeschi.bmc.exercise_1.dao.CatalogRepository;
import atedeschi.bmc.exercise_1.dao.CustomerRepository;
import atedeschi.bmc.exercise_1.model.Catalog;
import atedeschi.bmc.exercise_1.model.Customer;
import atedeschi.bmc.exercise_1.model.Login;

@Service
public class CatalogServiceImpl implements CatalogService {
	
	@Autowired
	public CatalogRepository catalogRepo;
	
	@Autowired
	public CustomerRepository customerRepository;
	
	public List<Catalog> catalogList(Login login) {
		List<Catalog> result = new LinkedList<>();
		
		if (login!=null) {
			Optional<Customer> optCustomer = customerRepository.findByUsername(login.getUsername());
		
			if(optCustomer.isPresent() && StringUtils.isNotBlank(optCustomer.get().getUsername())) {
				result = catalogRepo.findAll();
			}
		}
		return result;
	}
	
}
