package com.handloom.authentication;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RegisterRepo extends JpaRepository<Register,Integer>{
	List<Register> findAll();
}