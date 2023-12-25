package com.backend.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.backend.model.Education;

public interface EducationRepo extends  JpaRepository<Education, Long>{

}
