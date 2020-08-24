package atedeschi.bmc.exercise_1.service;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import atedeschi.bmc.exercise_1.dao.WarehouseRepository;
import atedeschi.bmc.exercise_1.model.SpecialUser;
import atedeschi.bmc.exercise_1.model.Warehouse;
import atedeschi.bmc.exercise_1.service.utils.RoleUtils;

@Service
public class WarehouseServiceImpl implements WarehouseService {
	
	@Autowired
	public WarehouseRepository warehouseRepo;
	
	public List<Warehouse> warehouseList(SpecialUser specialUser) {
		List<Warehouse> result = new LinkedList<>();
		if(RoleUtils.isEnabledToWarehouse(specialUser)) {
			result = warehouseRepo.findAll();
		}
		return result;
	}
	
}
