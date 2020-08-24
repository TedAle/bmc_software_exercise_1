package atedeschi.bmc.exercise_1.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import atedeschi.bmc.exercise_1.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, String> {
	
	public Optional<Customer> findByUsername(String username);

}
