package com.backend.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.backend.model.Business;

public interface BusinessRepo extends JpaRepository<Business, Long>{

}
