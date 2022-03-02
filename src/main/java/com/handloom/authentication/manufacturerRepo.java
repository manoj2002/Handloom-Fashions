package com.handloom.authentication;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface manufacturerRepo extends JpaRepository<manufacturer,Integer>{
	List<manufacturer> findAll();
}
