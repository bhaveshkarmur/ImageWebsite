package com.backend.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.backend.model.Sport;

public interface SportRepo extends JpaRepository<Sport,Long>{

}
