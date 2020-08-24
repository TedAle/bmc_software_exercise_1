package atedeschi.bmc.exercise_1.service;

import java.util.List;

import org.springframework.stereotype.Service;

import atedeschi.bmc.exercise_1.model.SpecialUser;
import atedeschi.bmc.exercise_1.model.Warehouse;

@Service
public interface WarehouseService {
	
	public List<Warehouse> warehouseList(SpecialUser specialUser);
	
}
