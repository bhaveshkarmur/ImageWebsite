package com.backend.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.backend.model.Food;

public interface FoodRepo extends JpaRepository<Food,Long>{

}
