package com.backend.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.backend.model.Animal;

public interface AnimalRepo extends JpaRepository<Animal,Long>{

}
