package atedeschi.bmc.exercise_1.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import atedeschi.bmc.exercise_1.model.Warehouse;

@Repository
public interface WarehouseRepository extends JpaRepository<Warehouse, String> {
	
}
