package atedeschi.bmc.exercise_1.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import atedeschi.bmc.exercise_1.model.SpecialUser;

@Repository
public interface SpecialUserRepository extends JpaRepository<SpecialUser, String> {
	
	public Optional<SpecialUser> findByUsername(String username);

}
