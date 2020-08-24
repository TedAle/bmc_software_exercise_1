package atedeschi.bmc.exercise_1.service;

import java.util.List;

import org.springframework.stereotype.Service;

import atedeschi.bmc.exercise_1.model.Catalog;
import atedeschi.bmc.exercise_1.model.Login;

@Service
public interface CatalogService {
	
	public List<Catalog> catalogList(Login login);
	
}
